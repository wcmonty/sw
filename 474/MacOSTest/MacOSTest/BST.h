//
//  BST.h
//  MacOSTest
//
//  Created by William Montgomery on 4/2/14.
//  Copyright (c) 2014 William Montgomery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSTNode.h"

@interface BST : NSObject{
    BSTNode * root;    
}

-(void) remove: (int) anotherValue;
-(Boolean) insert: (int) anotherValue;
-(void) addAll: (BST*) anotherBST;
-(void) clear;
-(void) copy: (BST *) anotherBST;
-(BSTNode *) root;
-(NSString *) toString;
@end
