//
//  BSTNode.h
//  MacOSTest
//
//  Created by William Montgomery on 4/2/14.
//  Copyright (c) 2014 William Montgomery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSTNode : NSObject {
    int value;
    BSTNode * left;
    BSTNode * right;
}

+(BSTNode *) new: (int) value;
-(BSTNode *) setValue: (int) newValue;
-(BSTNode *) remove: (int) oldValue;
-(Boolean) insert: (int) newValue;
-(void) addTo: (BSTNode *) otherNode;
-(BSTNode *) copy;
-(NSString * ) toString;
@end

