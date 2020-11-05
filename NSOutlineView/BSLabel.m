//
//  BSLabel.m
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import "BSLabel.h"

@implementation BSLabel

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)prepareForReuse {
    [super prepareForReuse];
    self.stringValue = @"";
}

@end
