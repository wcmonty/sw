//
//  CS474AppDelegate.m
//  MacOSTest
//
//  Created by William Montgomery on 4/1/14.
//  Copyright (c) 2014 William Montgomery. All rights reserved.
//

#import "CS474AppDelegate.h"

@implementation CS474AppDelegate
@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    set1 = [BST new];
    set2 = [BST new];
}


- (IBAction)removePressed:(id)sender {
    if ([[inputField stringValue] length] > 0){
        [set1 remove: [inputField intValue]];
    }
    [self logSets];
}


- (IBAction)addPressed:(id)sender {
    if ([[inputField stringValue] length] > 0){
        [set1 insert: [inputField intValue]];
    }
    [self logSets];
}

- (IBAction)switchPressed:(id)sender {
    BST* temp = set1;
    set1 = set2;
    set2 = temp;
    [self logSets];
}

- (IBAction)unionPressed:(id)sender {
    [set1 addAll: set2];
    [self logSets];
}

- (IBAction)clearPressed:(id)sender {
    set1 = [BST new];
    [self logSets];
}


- (IBAction)savePressed:(id)sender {
    [set2 copy: set1];
    [self logSets];
}

- (void) logSets {
    [_set1Field setStringValue: [set1 toString]];
    [_set2Field setStringValue: [set2 toString]];
}

@end
