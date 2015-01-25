//
//  CS474AppDelegate.h
//  MacOSTest
//
//  Created by William Montgomery on 4/1/14.
//  Copyright (c) 2014 William Montgomery. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BST.h"

@interface CS474AppDelegate : NSObject <NSApplicationDelegate> {
IBOutlet NSButton *addButton;
IBOutlet NSButton *switchButton;
IBOutlet NSButton *unionButton;
IBOutlet NSButton *clearButton;
IBOutlet NSButton *saveButton;

    NSTextField *_set1Field;
    NSTextField *_set2Field;
IBOutlet NSTextField *inputField;

BST * set1;
BST * set2;

}

@property (assign) IBOutlet NSWindow *window;
- (IBAction)removePressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)unionPressed:(id)sender;
- (IBAction)switchPressed:(id)sender;
- (IBAction)clearPressed:(id)sender;
- (IBAction)savePressed:(id)sender;
@property (strong) IBOutlet NSTextField *set1Field;
@property (strong) IBOutlet NSTextField *set2Field;
@end
