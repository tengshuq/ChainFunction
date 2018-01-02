//
//  ChainFunctionForUIScrollView.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUIScrollView.h"

@interface ChainFunctionForUIScrollView ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ChainFunctionForUIScrollView

- (ChainFunctionForUIView *(^)(void))viewMaker {
    return ^(void) {
        return ((UIView *)self.scrollView).viewChain;
    };
}

#pragma mark - scrollView
- (ChainFunctionForUIScrollView *(^)(CGPoint)) contentOffset {
    return ^(CGPoint  contentOffset) {
        self.scrollView.contentOffset = contentOffset;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(CGSize)) contentSize {
    return ^(CGSize  contentSize) {
        self.scrollView.contentSize = contentSize;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(UIEdgeInsets)) contentInset {
    return ^(UIEdgeInsets  contentInset) {
        self.scrollView.contentInset = contentInset;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior)) contentInsetAdjustmentBehavior {
    return ^(UIScrollViewContentInsetAdjustmentBehavior  contentInsetAdjustmentBehavior) {
        self.scrollView.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        return self;
    };
}

- (ChainFunctionForUIScrollView *(^)(id<UIScrollViewDelegate>)) delegate {
    return ^(id<UIScrollViewDelegate>  delegate) {
        self.scrollView.delegate = delegate;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) directionalLockEnabled {
    return ^(BOOL  directionalLockEnabled) {
        self.scrollView.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) bounces {
    return ^(BOOL  bounces) {
        self.scrollView.bounces = bounces;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) alwaysBounceVertical {
    return ^(BOOL  alwaysBounceVertical) {
        self.scrollView.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) alwaysBounceHorizontal {
    return ^(BOOL  alwaysBounceHorizontal) {
        self.scrollView.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) pagingEnabled {
    return ^(BOOL  pagingEnabled) {
        self.scrollView.pagingEnabled = pagingEnabled;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) scrollEnabled {
    return ^(BOOL  scrollEnabled) {
        self.scrollView.scrollEnabled = scrollEnabled;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) showsHorizontalScrollIndicator {
    return ^(BOOL  showsHorizontalScrollIndicator) {
        self.scrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) showsVerticalScrollIndicator {
    return ^(BOOL  showsVerticalScrollIndicator) {
        self.scrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(UIEdgeInsets)) scrollIndicatorInsets {
    return ^(UIEdgeInsets  scrollIndicatorInsets) {
        self.scrollView.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(UIScrollViewIndicatorStyle)) indicatorStyle {
    return ^(UIScrollViewIndicatorStyle  indicatorStyle) {
        self.scrollView.indicatorStyle = indicatorStyle;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(CGFloat)) decelerationRate {
    return ^(CGFloat  decelerationRate) {
        self.scrollView.decelerationRate = decelerationRate;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) delaysContentTouches {
    return ^(BOOL  delaysContentTouches) {
        self.scrollView.delaysContentTouches = delaysContentTouches;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) canCancelContentTouches {
    return ^(BOOL  canCancelContentTouches) {
        self.scrollView.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(CGFloat)) minimumZoomScale {
    return ^(CGFloat  minimumZoomScale) {
        self.scrollView.minimumZoomScale = minimumZoomScale;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(CGFloat)) maximumZoomScale {
    return ^(CGFloat  maximumZoomScale) {
        self.scrollView.maximumZoomScale = maximumZoomScale;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(CGFloat)) zoomScale {
    return ^(CGFloat  zoomScale) {
        self.scrollView.zoomScale = zoomScale;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(BOOL)) bouncesZoom {
    return ^(BOOL  bouncesZoom) {
        self.scrollView.bouncesZoom = bouncesZoom;
        return self;
    };
}

- (ChainFunctionForUIScrollView *(^)(BOOL)) scrollsToTop {
    return ^(BOOL  scrollsToTop) {
        self.scrollView.scrollsToTop = scrollsToTop;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(UIScrollViewKeyboardDismissMode)) keyboardDismissMode {
    return ^(UIScrollViewKeyboardDismissMode  keyboardDismissMode) {
        self.scrollView.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}
- (ChainFunctionForUIScrollView *(^)(UIRefreshControl *)) refreshControl {
    return ^(UIRefreshControl * refreshControl) {
        self.scrollView.refreshControl = refreshControl;
        return self;
    };
}

#pragma mark - subviews
- (ChainFunctionForUITextView *(^)(void))textViewMaker {
    return ^(void) {
        NSAssert([self.scrollView isKindOfClass:[UITextView class]], @"textViewChain's target must be UITextView class");
        return ((UITextView *)self.scrollView).textViewChain;
    };
}
- (ChainFunctionForUITableView *(^)(void))tableViewMaker {
    return ^(void) {
        NSAssert([self.scrollView isKindOfClass:[UITableView class]], @"tableViewChain's target must be UITableView class");
        return ((UITableView *)self.scrollView).tableViewChain;
    };
}

- (ChainFunctionForUICollectionView *(^)(void))collevtionViewMaker {
    return ^(void) {
        NSAssert([self.scrollView isKindOfClass:[UICollectionView class]], @"tableViewChain's target must be UITableView class");
        return ((UICollectionView *)self.scrollView).collectionViewChain;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.scrollView.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UIScrollView (ChainFunction)
- (ChainFunctionForUIScrollView *)scrollChain {
    ChainFunctionForUIScrollView *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUIScrollView new];
        chain.scrollView = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
