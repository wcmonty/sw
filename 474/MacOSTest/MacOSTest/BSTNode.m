//
//  BSTNode.m
//  MacOSTest
//
//  Created by William Montgomery on 4/2/14.
//  Copyright (c) 2014 William Montgomery. All rights reserved.
//

#import "BSTNode.h"

@implementation BSTNode

+(BSTNode *) new: (int) newValue {
    BSTNode * temp = [BSTNode new];
    [temp setValue: newValue];
    return temp;
}

-(BSTNode *) setValue: (int) newValue {
    value = newValue;
    return self;
}

-(BSTNode *) left: (BSTNode *) leftNode {
    left = leftNode;
    return self;
}

-(BSTNode *) right: (BSTNode *) rightNode {
    right = rightNode;
    return self;
}

-(Boolean) contains: (int) anotherValue {
    if (anotherValue == value) {
        return TRUE;
    }
    else if (anotherValue < value && left != NULL) {
        return [left contains: anotherValue];
    }
    else if (anotherValue > value && right != NULL) {
        return [right contains: anotherValue];
    }
    
    // Fall through
    return FALSE;
}


-(int) max {
    if (right != NULL) {
        return [right max];
    }
    
    return value;
}

-(BSTNode *) remove: (int) oldValue {
    if (value == oldValue) {
        NSLog(@"removing %i!", oldValue);
        if (left != NULL) {
            value = [left max];
            left = [left remove: value];
            return self;
        }
        else {
            return right;
        }
    }
    else if (oldValue < value && left != NULL){
        left = [left remove: oldValue];
    }
    else if (right != NULL){
        right = [right remove: oldValue];
    }
    else {
        NSLog(@"%i was not in set!", oldValue);
    }

    
    return self;
}

-(Boolean) insert: (int) newValue {
    if (newValue == value){
        NSLog(@"%i already exists!", newValue);
        return false;
    }
    else if (newValue < value) {
        if (left != NULL){
            return [left insert: newValue];
        }
        else {
            left = [BSTNode new: newValue];
        }
    }
    else {
        if (right != NULL) {
            return [right insert: newValue];
        }
        else {
            right = [BSTNode new: newValue];
        }
    }
    return true;
}

-(void) addTo: (BSTNode *) otherNode {
    if (otherNode == NULL){
        return;
    }
    [otherNode insert: value];
    if (left != NULL){
        [left addTo: otherNode];
    }
    if (right != NULL){
        [right addTo: otherNode];
    }
}

-(BSTNode *) copy {
    BSTNode * newRoot = [BSTNode new: value];
    if (left != NULL) {
        [newRoot left: [left copy]];
    }
    if (right != NULL) {
        [newRoot right: [right copy]];
    }
    
    return newRoot;
}

-(NSString * ) toString {
//    NSString * base = [NSString stringWithFormat: @"%i", value];
    if (left != NULL && right != NULL) {
        return [NSString stringWithFormat:@"%@ %i %@", [left toString], value, [right toString]];
    }
    else if (left != NULL) {
        return [NSString stringWithFormat:@"%@ %i", [left toString], value];
    }
    else if (right != NULL) {
        return [NSString stringWithFormat:@"%i %@", value, [right toString]];
    }
    
    return [NSString stringWithFormat:@"%i", value];
}
@end
