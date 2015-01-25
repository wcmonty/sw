/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdio.h>
#include <dirent.h>
#include <sys/types.h>
#include <limits.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

#include "filesearch.h"
#include "summary.h"



FileSearch::FileSearch()
{
}

FileSearch::~FileSearch()
{

}

void FileSearch::run(const string filename, EvalNode *root)
{
    // Make a copy of the string
    char *cstr = new char[filename.length() + 1];
    strcpy(cstr, filename.c_str());

    struct stat buffer;
    lstat(cstr, &buffer);
    evaluateIt(cstr, root, 0, &buffer);
    processDirectory(cstr, root, 0, NULL);
    delete[] (cstr);
}


void FileSearch::processDirectories(const char *dirName, EvalNode *root, int depth, struct subdirstats*)
{
    DIR *directory;

    // Open the directory.
    directory = opendir (dirName);

    // Check it was opened.
    if (!directory) {
        printf("Cannot open directory: %s\n", dirName);
        return;
    }

    while (true) {
        struct dirent *entry;

        // Read the directory
        entry = readdir (directory);
        if (!entry) break;

        char file[PATH_MAX];
        snprintf (file, PATH_MAX,"%s/%s", dirName, entry->d_name);

        struct stat buffer;
        lstat(file, &buffer);

        if (strcmp("..", entry->d_name) != 0 &&
                strcmp(".", entry->d_name) != 0 &&
                S_ISDIR(buffer.st_mode)){

            processDirectory (file, root, depth + 1, NULL);
            evaluateIt(file, root, depth, &buffer);
        }
    }

    // Close the directory.
    if (closedir (directory)) {
        perror("Could not close directory:");
        exit (EXIT_FAILURE);
    }

}

void FileSearch::evaluateIt(const char *file, EvalNode *root, int depth, struct stat *buffer)
{
    root->eval(file, buffer, depth);
}

void FileSearch::processFiles(const char *dirName, EvalNode *root, int depth, struct subdirstats*)
{
    DIR *directory;

    // Open the directory.
    directory = opendir (dirName);

    // Check it was opened.
    if (!directory) {
        printf("Cannot open directory: %s\n", dirName);
        return;
    }

    while (true) {
        struct dirent *entry;

        // Read the directory
        entry = readdir (directory);
        if (!entry) break;

        char file[PATH_MAX];
        snprintf (file, PATH_MAX,"%s/%s", dirName, entry->d_name);

        struct stat buffer;
        lstat(file, &buffer);

        if (strcmp("..", entry->d_name) != 0 &&
                strcmp(".", entry->d_name) != 0 &&
                !S_ISDIR(buffer.st_mode)){
            evaluateIt(file, root, depth, &buffer);
        }
    }

    // Close the directory.
    if (closedir (directory)) {
        perror("Could not close directory:");
        exit (EXIT_FAILURE);
    }

}
