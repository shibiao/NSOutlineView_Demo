//
//  Node.h
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject
@property (nonatomic, copy) NSString *value;
@property (nonatomic, strong) NSArray<Node *> *children;

@property (nonatomic, assign, readonly) NSInteger count;
@property (nonatomic, assign, readonly) BOOL isLeaf;

+ (instancetype)nodeWithValue:(NSString *)value andChildren:(nullable NSArray<Node *> *)children;
@end

NS_ASSUME_NONNULL_END
