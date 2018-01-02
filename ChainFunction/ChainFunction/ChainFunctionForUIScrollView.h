//
//  ChainFunctionForUIScrollView.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@class ChainFunctionForUITextView,ChainFunctionForUITableView,ChainFunctionForUICollectionView;

@interface ChainFunctionForUIScrollView : NSObject

- (ChainFunctionForUIView *(^)(void))viewMaker;

#pragma mark - scrollView
- (ChainFunctionForUIScrollView *(^)(CGPoint)) contentOffset;
- (ChainFunctionForUIScrollView *(^)(CGSize)) contentSize;
- (ChainFunctionForUIScrollView *(^)(UIEdgeInsets)) contentInset;
- (ChainFunctionForUIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior)) contentInsetAdjustmentBehavior API_AVAILABLE(ios(11.0),tvos(11.0));

- (ChainFunctionForUIScrollView *(^)(id<UIScrollViewDelegate>)) delegate;
- (ChainFunctionForUIScrollView *(^)(BOOL)) directionalLockEnabled;
- (ChainFunctionForUIScrollView *(^)(BOOL)) bounces;
- (ChainFunctionForUIScrollView *(^)(BOOL)) alwaysBounceVertical;
- (ChainFunctionForUIScrollView *(^)(BOOL)) alwaysBounceHorizontal;
- (ChainFunctionForUIScrollView *(^)(BOOL)) pagingEnabled;
- (ChainFunctionForUIScrollView *(^)(BOOL)) scrollEnabled;
- (ChainFunctionForUIScrollView *(^)(BOOL)) showsHorizontalScrollIndicator;
- (ChainFunctionForUIScrollView *(^)(BOOL)) showsVerticalScrollIndicator;
- (ChainFunctionForUIScrollView *(^)(UIEdgeInsets)) scrollIndicatorInsets;
- (ChainFunctionForUIScrollView *(^)(UIScrollViewIndicatorStyle)) indicatorStyle;
- (ChainFunctionForUIScrollView *(^)(CGFloat)) decelerationRate;
- (ChainFunctionForUIScrollView *(^)(BOOL)) delaysContentTouches;
- (ChainFunctionForUIScrollView *(^)(BOOL)) canCancelContentTouches;
- (ChainFunctionForUIScrollView *(^)(CGFloat)) minimumZoomScale;
- (ChainFunctionForUIScrollView *(^)(CGFloat)) maximumZoomScale;
- (ChainFunctionForUIScrollView *(^)(CGFloat)) zoomScale;
- (ChainFunctionForUIScrollView *(^)(BOOL)) bouncesZoom;
- (ChainFunctionForUIScrollView *(^)(BOOL)) scrollsToTop;
- (ChainFunctionForUIScrollView *(^)(UIScrollViewKeyboardDismissMode)) keyboardDismissMode NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUIScrollView *(^)(UIRefreshControl *)) refreshControl NS_AVAILABLE_IOS(10_0);

#pragma mark - subviews
- (ChainFunctionForUITextView *(^)(void))textViewMaker;
- (ChainFunctionForUITableView *(^)(void))tableViewMaker;
- (ChainFunctionForUICollectionView *(^)(void))collevtionViewMaker;

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UIScrollView (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUIScrollView *scrollChain;

@end
