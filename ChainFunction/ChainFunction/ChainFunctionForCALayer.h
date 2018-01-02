//
//  ChainFunctionForCALayer.h
//  ChainFunction
//
//  Created by TengShuQiang on 2017/12/28.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ChainFunctionForCALayer : NSObject

- (ChainFunctionForCALayer *(^)(CGRect)) bounds;
- (ChainFunctionForCALayer *(^)(CGPoint)) position;
- (ChainFunctionForCALayer *(^)(CGFloat)) zPosition;
- (ChainFunctionForCALayer *(^)(CGPoint)) anchorPoint;
- (ChainFunctionForCALayer *(^)(CGFloat)) anchorPointZ;
- (ChainFunctionForCALayer *(^)(CATransform3D)) transform;
- (ChainFunctionForCALayer *(^)(CGAffineTransform)) affineTransform;
- (ChainFunctionForCALayer *(^)(CGRect)) frame;
- (ChainFunctionForCALayer *(^)(BOOL)) hidden;
- (ChainFunctionForCALayer *(^)(BOOL)) doubleSided;
- (ChainFunctionForCALayer *(^)(BOOL)) geometryFlipped;
- (ChainFunctionForCALayer *(^)(CATransform3D)) sublayerTransform;
- (ChainFunctionForCALayer *(^)(CALayer *)) mask;
- (ChainFunctionForCALayer *(^)(BOOL)) masksToBounds;
- (ChainFunctionForCALayer *(^)(id)) contents;
- (ChainFunctionForCALayer *(^)(CGRect)) contentsRect;
- (ChainFunctionForCALayer *(^)(NSString *)) contentsGravity;
- (ChainFunctionForCALayer *(^)(CGFloat)) contentsScale;
- (ChainFunctionForCALayer *(^)(CGRect)) contentsCenter;
- (ChainFunctionForCALayer *(^)(NSString *)) contentsFormat;
- (ChainFunctionForCALayer *(^)(NSString *)) minificationFilter;
- (ChainFunctionForCALayer *(^)(NSString *)) magnificationFilter;
- (ChainFunctionForCALayer *(^)(float)) minificationFilterBias;
- (ChainFunctionForCALayer *(^)(BOOL)) opaque;
- (ChainFunctionForCALayer *(^)(BOOL)) needsDisplayOnBoundsChange;
- (ChainFunctionForCALayer *(^)(BOOL)) drawsAsynchronously;
- (ChainFunctionForCALayer *(^)(CGContextRef)) renderInContext;
- (ChainFunctionForCALayer *(^)(CAEdgeAntialiasingMask)) edgeAntialiasingMask;
- (ChainFunctionForCALayer *(^)(BOOL)) allowsEdgeAntialiasing;
- (ChainFunctionForCALayer *(^)(CGColorRef)) backgroundColor;
- (ChainFunctionForCALayer *(^)(CGFloat)) cornerRadius;
- (ChainFunctionForCALayer *(^)(CACornerMask)) maskedCorners CA_AVAILABLE_STARTING (10.13, 11.0, 11.0, 4.0);
- (ChainFunctionForCALayer *(^)(CGFloat)) borderWidth;
- (ChainFunctionForCALayer *(^)(CGColorRef)) borderColor;
- (ChainFunctionForCALayer *(^)(float)) opacity;
- (ChainFunctionForCALayer *(^)(BOOL)) allowsGroupOpacity;
- (ChainFunctionForCALayer *(^)(id)) compositingFilter;
- (ChainFunctionForCALayer *(^)(NSArray *)) filters;
- (ChainFunctionForCALayer *(^)(NSArray *)) backgroundFilters;
- (ChainFunctionForCALayer *(^)(BOOL)) shouldRasterize;
- (ChainFunctionForCALayer *(^)(CGFloat)) rasterizationScale;
- (ChainFunctionForCALayer *(^)(CGColorRef)) shadowColor;
- (ChainFunctionForCALayer *(^)(float)) shadowOpacity;
- (ChainFunctionForCALayer *(^)(CGSize)) shadowOffset;
- (ChainFunctionForCALayer *(^)(CGFloat)) shadowRadius;
- (ChainFunctionForCALayer *(^)(CGPathRef)) shadowPath;
- (ChainFunctionForCALayer *(^)(NSDictionary<NSString *, id<CAAction>> *)) actions;
- (ChainFunctionForCALayer *(^)(NSString *)) name;
- (ChainFunctionForCALayer *(^)(id <CALayerDelegate>)) delegate;
- (ChainFunctionForCALayer *(^)(NSDictionary *)) style;

- (ChainFunctionForCALayer *(^)(CALayer *)) addSublayer;
- (ChainFunctionForCALayer *(^)(CALayer *)) addToSuperLayer;
- (ChainFunctionForCALayer *(^)(CAAnimation *,NSString *)) addAnimationForKey;
- (ChainFunctionForCALayer *(^)(NSString *)) removeAnimationForKey;

@end

@interface CALayer (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForCALayer *chainMaker;

@end
