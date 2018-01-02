//
//  ChainFunctionForUITableView.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUITableView.h"

@interface ChainFunctionForUITableView ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ChainFunctionForUITableView

- (ChainFunctionForUIView *(^)(void)) viewMaker {
    return ^(void) {
        return ((UIView *)self.tableView).viewChain;
    };
}

- (ChainFunctionForUIScrollView *(^)(void)) scrollMaker {
    return ^(void) {
        return ((UIScrollView *)self.tableView).scrollChain;
    };
}

#pragma mark - tableView

- (ChainFunctionForUITableView *(^)(id <UITableViewDataSource>)) dataSource {
    return ^(id <UITableViewDataSource> dataSource) {
        self.tableView.dataSource = dataSource;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(id <UITableViewDelegate>)) delegate {
    return ^(id <UITableViewDelegate> delegate) {
        self.tableView.delegate = delegate;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(id <UITableViewDataSourcePrefetching>)) prefetchDataSource {
    return ^(id <UITableViewDataSourcePrefetching> prefetchDataSource) {
        self.tableView.prefetchDataSource = prefetchDataSource;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(id <UITableViewDragDelegate>)) dragDelegate {
    return ^(id <UITableViewDragDelegate> dragDelegate) {
        self.tableView.dragDelegate = dragDelegate;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(id <UITableViewDropDelegate>)) dropDelegate  {
    return ^(id <UITableViewDropDelegate> dropDelegate) {
        self.tableView.dropDelegate = dropDelegate;
        return self;
    };
}

- (ChainFunctionForUITableView *(^)(CGFloat)) rowHeight {
    return ^(CGFloat rowHeight) {
        self.tableView.rowHeight = rowHeight;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(CGFloat)) sectionHeaderHeight {
    return ^(CGFloat sectionHeaderHeight) {
        self.tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(CGFloat)) sectionFooterHeight {
    return ^(CGFloat sectionFooterHeight) {
        self.tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(CGFloat)) estimatedRowHeight {
    return ^(CGFloat estimatedRowHeight) {
        self.tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(CGFloat)) estimatedSectionHeaderHeight {
    return ^(CGFloat estimatedSectionHeaderHeight) {
        self.tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(CGFloat)) estimatedSectionFooterHeight {
    return ^(CGFloat estimatedSectionFooterHeight) {
        self.tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIEdgeInsets)) separatorInset {
    return ^(UIEdgeInsets separatorInset) {
        self.tableView.separatorInset = separatorInset;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UITableViewSeparatorInsetReference)) separatorInsetReference {
    return ^(UITableViewSeparatorInsetReference separatorInsetReference) {
        self.tableView.separatorInsetReference = separatorInsetReference;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIView *)) backgroundView {
    return ^(UIView * backgroundView) {
        self.tableView.backgroundView = backgroundView;
        return self;
    };
}

- (ChainFunctionForUITableView *(^)(BOOL)) editing {
    return ^(BOOL editing) {
        self.tableView.editing = editing;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(BOOL)) allowsSelection {
    return ^(BOOL allowsSelection) {
        self.tableView.allowsSelection = allowsSelection;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(BOOL)) allowsSelectionDuringEditing {
    return ^(BOOL allowsSelectionDuringEditing) {
        self.tableView.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(NSInteger)) sectionIndexMinimumDisplayRowCount {
    return ^(NSInteger sectionIndexMinimumDisplayRowCount) {
        self.tableView.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIColor *)) sectionIndexColor {
    return ^(UIColor * sectionIndexColor) {
        self.tableView.sectionIndexColor = sectionIndexColor;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIColor *)) sectionIndexBackgroundColor {
    return ^(UIColor * sectionIndexBackgroundColor) {
        self.tableView.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIColor *)) sectionIndexTrackingBackgroundColor {
    return ^(UIColor * sectionIndexTrackingBackgroundColor) {
        self.tableView.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UITableViewCellSeparatorStyle)) separatorStyle {
    return ^(UITableViewCellSeparatorStyle separatorStyle) {
        self.tableView.separatorStyle = separatorStyle;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIColor *)) separatorColor {
    return ^(UIColor * separatorColor) {
        self.tableView.separatorColor = separatorColor;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIVisualEffect *)) separatorEffect {
    return ^(UIVisualEffect * separatorEffect) {
        self.tableView.separatorEffect = separatorEffect;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(BOOL)) cellLayoutMarginsFollowReadableWidth {
    return ^(BOOL  cellLayoutMarginsFollowReadableWidth) {
        self.tableView.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(BOOL)) insetsContentViewsToSafeArea {
    return ^(BOOL  insetsContentViewsToSafeArea) {
        self.tableView.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIView *)) tableHeaderView {
    return ^(UIView * tableHeaderView) {
        self.tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UIView *)) tableFooterView {
    return ^(UIView * tableFooterView) {
        self.tableView.tableFooterView = tableFooterView;
        return self;
    };
}

- (ChainFunctionForUITableView *(^)(BOOL)) dragInteractionEnabled {
    return ^(BOOL  dragInteractionEnabled) {
        self.tableView.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}

//register class ..
- (ChainFunctionForUITableView *(^)(Class, NSString *)) registerClass {
    return ^(Class cls, NSString *Id) {
        [self.tableView registerClass:cls forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(UINib *, NSString *)) registerNib {
    return ^(UINib *nib, NSString *Id) {
        [self.tableView registerNib:nib forCellReuseIdentifier:Id];
        return self;
    };
}
- (ChainFunctionForUITableView *(^)(Class, NSString *)) registerHeaderFooterClass {
    return ^(Class cls, NSString *Id) {
        [self.tableView registerClass:cls forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

- (ChainFunctionForUITableView *(^)(UINib *, NSString *)) registerHeaderFooterNib {
    return ^(UINib *nib, NSString *Id) {
        [self.tableView registerNib:nib forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.tableView.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UITableView (ChainFunction)

- (ChainFunctionForUITableView *)tableViewChain {
    ChainFunctionForUITableView *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUITableView new];
        chain.tableView = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
