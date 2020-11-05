//
//  BSOutlineView.m
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import "BSOutlineView.h"

@implementation BSOutlineView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (NSRect)frameOfOutlineCellAtRow:(NSInteger)row {
    return NSZeroRect;
}

- (NSRect)frameOfCellAtColumn:(NSInteger)column row:(NSInteger)row {
    NSRect superFrame = [super frameOfCellAtColumn:column row:row];
    if (column == 0 && ([self levelForRow:row] == 0)) {
        return NSMakeRect(0, superFrame.origin.y, [self bounds].size.width, superFrame.size.height);
    }else {
        return NSMakeRect(10 * [self levelForRow:row], superFrame.origin.y, [self bounds].size.width, superFrame.size.height);
    }
    return superFrame;
}
@end
