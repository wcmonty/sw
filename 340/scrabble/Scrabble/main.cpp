#include <QApplication>
#include <QDebug>
#include <iostream>
#include <qscreen.h>
#include "dictionaryloader.h"
#include "game.h"
#include "humanplayer.h"
#include <QLayout>
#include <QPushButton>
#include <QString>
#include <QSplitter>
#include <QDockWidget>
#include "dialog.h"
#include "UnitTest.cpp"

static const bool UNITTEST = false;

using namespace std;

static const int XSIZE = 700;
static const int YSIZE = 700;

/*!
 * \brief main Main
 * \param argc The argument count
 * \param argv The argument values
 * \return 0 if no errors
 */
int main(int argc, char *argv[])
{
    // Run unit tests
    if( UNITTEST == true )
    {
        UnitTest * tester = new UnitTest();
        tester->runalltests();
        delete tester;
    }

    // Run the application
    QApplication a(argc, argv);
    Dialog *dialog = new Dialog;
    dialog->show();

    return a.exec();
}
