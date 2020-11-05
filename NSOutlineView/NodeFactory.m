//
//  NodeFactory.m
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import "NodeFactory.h"
#import "Node.h"

@implementation NodeFactory

+ (NSArray<Node *> *)nodes {
    return @[[Node nodeWithValue:@"第一行" andChildren:@[
                [Node nodeWithValue:@"小行1" andChildren:@[
                    [Node nodeWithValue:@"1小行1" andChildren:nil],
                    [Node nodeWithValue:@"1小行2" andChildren:nil],
                    [Node nodeWithValue:@"1小行3" andChildren:nil],
                ]],
                [Node nodeWithValue:@"小行2" andChildren:nil]
            ]],
             [Node nodeWithValue:@"第二行" andChildren:@[
                 [Node nodeWithValue:@"小行3" andChildren:nil],
                 [Node nodeWithValue:@"小行4" andChildren:nil]
             ]]];
}
@end
