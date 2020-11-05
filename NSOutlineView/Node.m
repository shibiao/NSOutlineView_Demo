//
//  Node.m
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithValue:(NSString *)value andChildren:(NSArray<Node *> *)children {
    Node *node = [[Node alloc] init];
    node.value = value;
    node.children = children;
    return node;
}

- (NSInteger)count {
    return self.children.count;
}

- (BOOL)isLeaf {
    return self.children == nil ? NO : YES;
}
@end
