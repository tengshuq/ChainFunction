//
//  ChainFunctionForUITableView.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@interface ChainFunctionForUITableView : NSObject


- (ChainFunctionForUIView *(^)(void)) viewMaker;

- (ChainFunctionForUIScrollView *(^)(void)) scrollMaker;


#pragma mark - tableView

- (ChainFunctionForUITableView *(^)(id <UITableViewDataSource>)) dataSource;
- (ChainFunctionForUITableView *(^)(id <UITableViewDelegate>)) delegate;
- (ChainFunctionForUITableView *(^)(id <UITableViewDataSourcePrefetching>)) prefetchDataSource NS_AVAILABLE_IOS(10_0);
- (ChainFunctionForUITableView *(^)(id <UITableViewDragDelegate>)) dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (ChainFunctionForUITableView *(^)(id <UITableViewDropDelegate>)) dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

- (ChainFunctionForUITableView *(^)(CGFloat)) rowHeight;
- (ChainFunctionForUITableView *(^)(CGFloat)) sectionHeaderHeight;
- (ChainFunctionForUITableView *(^)(CGFloat)) sectionFooterHeight;
- (ChainFunctionForUITableView *(^)(CGFloat)) estimatedRowHeight NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUITableView *(^)(CGFloat)) estimatedSectionHeaderHeight NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUITableView *(^)(CGFloat)) estimatedSectionFooterHeight NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUITableView *(^)(UIEdgeInsets)) separatorInset NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUITableView *(^)(UITableViewSeparatorInsetReference)) separatorInsetReference API_AVAILABLE(ios(11.0), tvos(11.0));
- (ChainFunctionForUITableView *(^)(UIView *)) backgroundView NS_AVAILABLE_IOS(3_2);

- (ChainFunctionForUITableView *(^)(BOOL)) editing;
- (ChainFunctionForUITableView *(^)(BOOL)) allowsSelection NS_AVAILABLE_IOS(3_0);
- (ChainFunctionForUITableView *(^)(BOOL)) allowsSelectionDuringEditing;
- (ChainFunctionForUITableView *(^)(NSInteger)) sectionIndexMinimumDisplayRowCount;
- (ChainFunctionForUITableView *(^)(UIColor *)) sectionIndexColor NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITableView *(^)(UIColor *)) sectionIndexBackgroundColor NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUITableView *(^)(UIColor *)) sectionIndexTrackingBackgroundColor NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITableView *(^)(UITableViewCellSeparatorStyle)) separatorStyle;
- (ChainFunctionForUITableView *(^)(UIColor *)) separatorColor;
- (ChainFunctionForUITableView *(^)(UIVisualEffect *)) separatorEffect NS_AVAILABLE_IOS(8_0);
- (ChainFunctionForUITableView *(^)(BOOL)) cellLayoutMarginsFollowReadableWidth NS_AVAILABLE_IOS(9_0);
- (ChainFunctionForUITableView *(^)(BOOL)) insetsContentViewsToSafeArea API_AVAILABLE(ios(11.0), tvos(11.0));
- (ChainFunctionForUITableView *(^)(UIView *)) tableHeaderView;
- (ChainFunctionForUITableView *(^)(UIView *)) tableFooterView;

- (ChainFunctionForUITableView *(^)(BOOL)) dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

//register class ..
- (ChainFunctionForUITableView *(^)(Class, NSString *)) registerClass;
- (ChainFunctionForUITableView *(^)(UINib *, NSString *)) registerNib;
- (ChainFunctionForUITableView *(^)(Class, NSString *)) registerHeaderFooterClass;
- (ChainFunctionForUITableView *(^)(UINib *, NSString *)) registerHeaderFooterNib;

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UITableView (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUITableView *tableViewChain;

@end

