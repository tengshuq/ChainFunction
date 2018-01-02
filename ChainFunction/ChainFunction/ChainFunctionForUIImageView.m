//
//  ChainFunctionForUIImageView.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUIImageView.h"

@interface ChainFunctionForUIImageView ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ChainFunctionForUIImageView

- (ChainFunctionForUIView *(^)(void)) viewMaker {
    return ^(void) {
        return ((UIView *)self.imageView).viewChain;
    };
}

#pragma mark -

- (ChainFunctionForUIImageView *(^)(UIViewTintAdjustmentMode)) tintAdjustmentMode {
    return ^(UIViewTintAdjustmentMode  tintAdjustmentMode) {
        self.imageView.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

//UIConstraintBasedCompatibility
- (ChainFunctionForUIImageView *(^)(BOOL)) translatesAutoresizingMaskIntoConstraints {
    return ^(BOOL  translatesAutoresizingMaskIntoConstraints) {
        self.imageView.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints;
        return self;
    };
}

- (ChainFunctionForUIImageView *(^)(UIImage *)) image {
    return ^(UIImage *image) {
        self.imageView.image = image;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(UIImage *)) highlightedImage {
    return ^(UIImage *highlightedImage) {
        self.imageView.highlightedImage = highlightedImage;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(BOOL)) userInteractionEnabled {
    return ^(BOOL userInteractionEnabled) {
        self.imageView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(BOOL)) highlighted {
    return ^(BOOL highlighted) {
        self.imageView.highlighted = highlighted;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(NSArray<UIImage *> *)) animationImages {
    return ^(NSArray<UIImage *> * animationImages) {
        self.imageView.animationImages = animationImages;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)( NSArray<UIImage *> *)) highlightedAnimationImages {
    return ^(NSArray<UIImage *> * highlightedAnimationImages) {
        self.imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(NSTimeInterval)) animationDuration {
    return ^(NSTimeInterval animationDuration) {
        self.imageView.animationDuration = animationDuration;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(NSInteger)) animationRepeatCount {
    return ^(NSInteger animationRepeatCount) {
        self.imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}
- (ChainFunctionForUIImageView *(^)(UIColor *)) tintColor {
    return ^(UIColor *tintColor) {
        self.imageView.tintColor = tintColor;
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.imageView.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UIImageView (ChainFunction)

- (ChainFunctionForUIImageView *)imageViewChain {
    ChainFunctionForUIImageView *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUIImageView new];
        chain.imageView = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
