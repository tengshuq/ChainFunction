//
//  ChainFunctionForCALayer.m
//  ChainFunction
//
//  Created by TengShuQiang on 2017/12/28.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForCALayer.h"

@interface ChainFunctionForCALayer ()

@property (nonatomic, strong) CALayer *layer;

@end

@implementation ChainFunctionForCALayer

- (ChainFunctionForCALayer *(^)(CGRect)) bounds {
    return ^(CGRect bounds) {
        self.layer.bounds = bounds;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGPoint)) position {
    return ^(CGPoint position) {
        self.layer.position = position;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) zPosition {
    return ^(CGFloat zPosition) {
        self.layer.zPosition = zPosition;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGPoint)) anchorPoint {
    return ^(CGPoint anchorPoint) {
        self.layer.anchorPoint = anchorPoint;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) anchorPointZ {
    return ^(CGFloat anchorPointZ) {
        self.layer.anchorPointZ = anchorPointZ;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CATransform3D)) transform {
    return ^(CATransform3D transform) {
        self.layer.transform = transform;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGAffineTransform)) affineTransform {
    return ^(CGAffineTransform affineTransform) {
        self.layer.affineTransform = affineTransform;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGRect)) frame {
    return ^(CGRect frame) {
        self.layer.frame = frame;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) hidden {
    return ^(BOOL hidden) {
        self.layer.hidden = hidden;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) doubleSided {
    return ^(BOOL doubleSided) {
        self.layer.doubleSided = doubleSided;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) geometryFlipped {
    return ^(BOOL geometryFlipped) {
        self.layer.geometryFlipped = geometryFlipped;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CATransform3D)) sublayerTransform {
    return ^(CATransform3D sublayerTransform) {
        self.layer.sublayerTransform = sublayerTransform;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CALayer *)) mask {
    return ^(CALayer * mask) {
        self.layer.mask = mask;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) masksToBounds {
    return ^(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(id)) contents {
    return ^(id contents) {
        self.layer.contents = contents;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGRect)) contentsRect {
    return ^(CGRect contentsRect) {
        self.layer.contentsRect = contentsRect;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSString *)) contentsGravity {
    return ^(NSString * contentsGravity) {
        self.layer.contentsGravity = contentsGravity;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) contentsScale {
    return ^(CGFloat contentsScale) {
        self.layer.contentsScale = contentsScale;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGRect)) contentsCenter {
    return ^(CGRect contentsCenter) {
        self.layer.contentsCenter = contentsCenter;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSString *)) contentsFormat {
    return ^(NSString * contentsFormat) {
        self.layer.contentsFormat = contentsFormat;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSString *)) minificationFilter {
    return ^(NSString * minificationFilter) {
        self.layer.minificationFilter = minificationFilter;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSString *)) magnificationFilter {
    return ^(NSString * magnificationFilter) {
        self.layer.magnificationFilter = magnificationFilter;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(float)) minificationFilterBias {
    return ^(float minificationFilterBias) {
        self.layer.minificationFilterBias = minificationFilterBias;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) opaque {
    return ^(BOOL opaque) {
        self.layer.opaque = opaque;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) needsDisplayOnBoundsChange {
    return ^(BOOL needsDisplayOnBoundsChange) {
        self.layer.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) drawsAsynchronously {
    return ^(BOOL drawsAsynchronously) {
        self.layer.drawsAsynchronously = drawsAsynchronously;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGContextRef)) renderInContext {
    return ^(CGContextRef renderInContext) {
        [self.layer renderInContext:renderInContext];
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CAEdgeAntialiasingMask)) edgeAntialiasingMask {
    return ^(CAEdgeAntialiasingMask edgeAntialiasingMask) {
        self.layer.edgeAntialiasingMask = edgeAntialiasingMask;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) allowsEdgeAntialiasing {
    return ^(BOOL allowsEdgeAntialiasing) {
        self.layer.allowsEdgeAntialiasing = allowsEdgeAntialiasing;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGColorRef)) backgroundColor {
    return ^(CGColorRef backgroundColor) {
        self.layer.backgroundColor = backgroundColor;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CACornerMask)) maskedCorners {
    return ^(CACornerMask maskedCorners) {
        self.layer.maskedCorners = maskedCorners;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) borderWidth {
    return ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGColorRef)) borderColor {
    return ^(CGColorRef borderColor) {
        self.layer.borderColor = borderColor;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(float)) opacity {
    return ^(float opacity) {
        self.layer.opacity = opacity;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) allowsGroupOpacity {
    return ^(BOOL allowsGroupOpacity) {
        self.layer.allowsGroupOpacity = allowsGroupOpacity;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(id)) compositingFilter {
    return ^(id compositingFilter) {
        self.layer.compositingFilter = compositingFilter;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSArray *)) filters {
    return ^(NSArray * filters) {
        self.layer.filters = filters;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSArray *)) backgroundFilters {
    return ^(NSArray * backgroundFilters) {
        self.layer.backgroundFilters = backgroundFilters;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(BOOL)) shouldRasterize {
    return ^(BOOL shouldRasterize) {
        self.layer.shouldRasterize = shouldRasterize;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) rasterizationScale {
    return ^(CGFloat rasterizationScale) {
        self.layer.rasterizationScale = rasterizationScale;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGColorRef)) shadowColor {
    return ^(CGColorRef shadowColor) {
        self.layer.shadowColor = shadowColor;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(float)) shadowOpacity {
    return ^(float shadowOpacity) {
        self.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGSize)) shadowOffset {
    return ^(CGSize shadowOffset) {
        self.layer.shadowOffset = shadowOffset;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(CGFloat)) shadowRadius {
    return ^(CGFloat shadowRadius) {
        self.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(CGPathRef)) shadowPath {
    return ^(CGPathRef shadowPath) {
        self.layer.shadowPath = shadowPath;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(NSDictionary<NSString *, id<CAAction>> *)) actions {
    return ^(NSDictionary<NSString *, id<CAAction>> *actions) {
        self.layer.actions = actions;
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(NSString *)) name {
    return ^(NSString *name) {
        self.layer.name = name;
        return self;
    };
}
- (ChainFunctionForCALayer *(^)(id <CALayerDelegate>)) delegate {
    return ^(id <CALayerDelegate> delegate) {
        self.layer.delegate = delegate;
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(NSDictionary *)) style {
    return ^(NSDictionary *style) {
        self.layer.style = style;
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(CALayer *)) addSublayer {
    return ^(CALayer *layer) {
        [self.layer addSublayer:layer];
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(CALayer *)) addToSuperLayer {
    return ^(CALayer *layer) {
        [layer addSublayer:self.layer];
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(CAAnimation *,NSString *)) addAnimationForKey {
    return ^(CAAnimation *ani,NSString *key) {
        [self.layer addAnimation:ani forKey:key];
        return self;
    };
}

- (ChainFunctionForCALayer *(^)(NSString *)) removeAnimationForKey {
    return ^(NSString *key) {
        [self.layer removeAnimationForKey:key];
        return self;
    };
}

@end

#import <objc/runtime.h>

@implementation CALayer (ChainFunction)

- (ChainFunctionForCALayer *)chainMaker {
    ChainFunctionForCALayer *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForCALayer new];
        chain.layer = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
