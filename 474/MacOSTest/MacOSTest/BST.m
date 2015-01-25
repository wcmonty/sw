//
//  BST.m
//  MacOSTest
//
//  Created by William Montgomery on 4/2/14.
//  Copyright (c) 2014 William Montgomery. All rights reserved.
//

#import "BST.h"

@implementation BST

-(BSTNode *) root {
    return root;
}


-(void) remove:(int) anotherValue {
    if (root != NULL) {
        root = [root remove: anotherValue];
    }
}

-(Boolean) insert: (int) anotherValue {
    if (root != NULL) {
        return [root insert: anotherValue];
    }
    root = [BSTNode new: anotherValue];
    return TRUE;
    
}

-(void) addAll: (BST*) anotherBST {
    if (root == NULL){
        root = [[anotherBST root] copy];
    }
    else if ([anotherBST root] != NULL){
        [[anotherBST root] addTo: [self root]];
    }
}

-(void) clear {
    root = NULL;
}

-(void) copy: (BST *) anotherBST {
    root = [[anotherBST root] copy];
}

-(NSString *) toString {
    if(root == NULL){
        return @"[]";
    }
    return [NSString stringWithFormat: @"[%@]", [root toString]];
}
@end
