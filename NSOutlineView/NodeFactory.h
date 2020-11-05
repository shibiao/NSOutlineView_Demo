//
//  NodeFactory.h
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import <Foundation/Foundation.h>
@class Node;
NS_ASSUME_NONNULL_BEGIN

@interface NodeFactory : NSObject
@property (nonatomic, strong, readonly, class) NSArray<Node *> *nodes;
@end

NS_ASSUME_NONNULL_END
