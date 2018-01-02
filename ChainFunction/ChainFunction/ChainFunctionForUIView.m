//
//  ChainFunctionForUIView.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUIView.h"

@interface ChainFunctionForUIView ()

@property (nonatomic, strong) UIView *view;

@end

@implementation ChainFunctionForUIView

- (ChainFunctionForUIView *(^)(NSInteger)) tag {
    return ^(NSInteger tag){
        self.view.tag = tag;
        return self;
    };
}

//UIViewGeometry
- (ChainFunctionForUIView *(^)(CGRect)) frame {
    return ^(CGRect frame) {
        self.view.frame = frame;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(CGRect)) bounds {
    return ^(CGRect bounds) {
        self.view.bounds = bounds;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(CGPoint)) center {
    return ^(CGPoint center) {
        self.view.center = center;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(CGAffineTransform)) transform {
    return ^(CGAffineTransform transform) {
        self.view.transform = transform;
        return self;
    };
}

- (ChainFunctionForUIView *(^)(CGFloat)) contentScaleFactor {
    return ^(CGFloat contentScaleFactor) {
        self.view.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) multipleTouchEnabled {
    return ^(BOOL multipleTouchEnabled) {
        self.view.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) exclusiveTouch {
    return ^(BOOL exclusiveTouch) {
        self.view.exclusiveTouch = exclusiveTouch;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) autoresizesSubviews {
    return ^(BOOL autoresizesSubviews) {
        self.view.autoresizesSubviews = autoresizesSubviews;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIViewAutoresizing)) autoresizingMask {
    return ^(UIViewAutoresizing autoresizingMask) {
        self.view.autoresizingMask = autoresizingMask;
        return self;
    };
}

//UIViewHierarchy
- (ChainFunctionForUIView *(^)(UIEdgeInsets)) layoutMargins {
    return ^(UIEdgeInsets layoutMargins) {
        self.view.layoutMargins = layoutMargins;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(NSDirectionalEdgeInsets)) directionalLayoutMargins {
    return ^(NSDirectionalEdgeInsets directionalLayoutMargins) {
        self.view.directionalLayoutMargins = directionalLayoutMargins;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) preservesSuperviewLayoutMargins {
    return ^(BOOL preservesSuperviewLayoutMargins) {
        self.view.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) insetsLayoutMarginsFromSafeArea {
    return ^(BOOL insetsLayoutMarginsFromSafeArea) {
        self.view.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea;
        return self;
    };
}

//UIViewRendering
- (ChainFunctionForUIView *(^)(BOOL)) clipsToBounds {
    return ^(BOOL clipsToBounds) {
        self.view.clipsToBounds = clipsToBounds;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIColor *)) backgroundColor {
    return ^(UIColor * backgroundColor) {
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(CGFloat)) alpha {
    return ^(CGFloat alpha) {
        self.view.alpha = alpha;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) opaque {
    return ^(BOOL opaque) {
        self.view.opaque = opaque;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(BOOL)) clearsContextBeforeDrawing {
    return ^(BOOL clearsContextBeforeDrawing) {
        self.view.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (ChainFunctionForUIView *(^)(BOOL)) hidden {
    return ^(BOOL hidden) {
        self.view.hidden = hidden;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIViewContentMode)) contentMode {
    return ^(UIViewContentMode contentMode) {
        self.view.contentMode = contentMode;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIView *)) maskView {
    return ^(UIView * maskView) {
        self.view.maskView = maskView;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIColor *)) tintColor {
    return ^(UIColor * tintColor) {
        self.view.tintColor = tintColor;
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIViewTintAdjustmentMode)) tintAdjustmentMode {
    return ^(UIViewTintAdjustmentMode  tintAdjustmentMode) {
        self.view.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

//UIConstraintBasedCompatibility
- (ChainFunctionForUIView *(^)(BOOL)) translatesAutoresizingMaskIntoConstraints {
    return ^(BOOL  translatesAutoresizingMaskIntoConstraints) {
        self.view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints;
        return self;
    };
}

//
- (ChainFunctionForUIView *(^)(UIView *)) addSubview {
    return ^(UIView *subview) {
        [self.view addSubview:subview];
        return self;
    };
}
- (ChainFunctionForUIView *(^)(UIView *)) addToSuperView {
    return ^(UIView *superView) {
        [superView addSubview:self.view];
        return self;
    };
}
#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.view.layer.chainMaker;
    };
}

#pragma mark - subviews
- (ChainFunctionForUILabel *(^)(void))labelMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UILabel class]], @"labelChain's target must be UILabel class");
        return ((UILabel *)self.view).labelChain;
    };
}
- (ChainFunctionForUIButton *(^)(void))buttonMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UIButton class]], @"buttonChain's target must be UIButton class");
        return ((UIButton *)self.view).buttonChain;
    };
}
- (ChainFunctionForUIImageView *(^)(void))imageViewMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UIImageView class]], @"imageViewChain's target must be UIImageView class");
        return ((UIImageView *)self.view).imageViewChain;
    };
}
- (ChainFunctionForUITextField *(^)(void))textFieldMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UITextField class]], @"textFieldChain's target must be UITextField class");
        return ((UITextField *)self.view).textFieldChain;
    };
}
- (ChainFunctionForUITextView *(^)(void))textViewMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UITextView class]], @"textViewChain's target must be UITextView class");
        return ((UITextView *)self.view).textViewChain;
    };
}
- (ChainFunctionForUIScrollView *(^)(void))scrollViewMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UIScrollView class]], @"scrollViewChain's target must be UIScrollView class");
        return ((UIScrollView *)self.view).scrollChain;
    };
}
- (ChainFunctionForUITableView *(^)(void))tableViewMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UITableView class]], @"tableViewChain's target must be UITableView class");
        return ((UITableView *)self.view).tableViewChain;
    };
}

- (ChainFunctionForUIControl *(^)(void))controlMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UIControl class]], @"controlChain's target must be UIControl class");
        return ((UIControl *)self.view).controlChain;
    };
}

- (ChainFunctionForUICollectionView *(^)(void))collectionViewMaker {
    return ^(void) {
        NSAssert([self.view isKindOfClass:[UICollectionView class]], @"collectionViewChain's target must be UICollectionView class");
        return ((UICollectionView *)self.view).collectionViewChain;
    };
}

@end

#import <objc/runtime.h>

@implementation UIView (ChainFunction)

- (ChainFunctionForUIView *)viewChain {
    ChainFunctionForUIView *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUIView new];
        chain.view = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}


@end
