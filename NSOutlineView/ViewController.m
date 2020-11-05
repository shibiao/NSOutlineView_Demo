//
//  ViewController.m
//  NSOutlineView
//
//  Created by ShiBiao on 2020/11/5.
//

#import "ViewController.h"
#import "NodeFactory.h"
#import "Node.h"
#import "BSOutlineView.h"
#import "BSLabel.h"

@interface ViewController()<NSOutlineViewDelegate, NSOutlineViewDataSource>

@property (weak) IBOutlet BSOutlineView *outlineView;

@property (nonatomic, strong) NSArray<Node *> *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.outlineView.delegate = self;
    self.outlineView.dataSource = self;
    self.outlineView.target = self;
    self.outlineView.action = @selector(handleButtonAction:);
}


- (void)handleButtonAction:(NSOutlineView *)outlineView {
    id selectedItem = [outlineView itemAtRow:[outlineView selectedRow]];
    if ([outlineView isItemExpanded:selectedItem]) {
        [outlineView collapseItem:selectedItem];
    }else {
        [outlineView expandItem:selectedItem expandChildren:YES];
    }
}

//MARK: NSOutlineViewDataSource
- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(nullable id)item{
    if (item == nil) {
        return self.dataArray.count;
    }
    Node *n = (Node *)item;
    return n.count;
}
- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(nullable id)item{
    if (item == nil) {
        return self.dataArray[index];
    }
    Node *n = item;
    return [n.children objectAtIndex:index];
}
- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item{
    Node *n = item;
    return n.isLeaf;
}
//MARK: NSOutlineViewDelegate
- (nullable NSView *)outlineView:(NSOutlineView *)outlineView viewForTableColumn:(nullable NSTableColumn *)tableColumn item:(id)item {
    BSLabel *label = [outlineView makeViewWithIdentifier:@"test" owner:self];
    if (!label) {
        label = [[BSLabel alloc] init];
    }
    label.backgroundColor = [NSColor clearColor];
    label.bordered = NO;
    label.editable = NO;
    Node *n = item;
    label.stringValue = n.value;
    return label;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (NSArray<Node *> *)dataArray {
    if (!_dataArray) {
        _dataArray = NodeFactory.nodes;
    }
    return _dataArray;
}

@end
