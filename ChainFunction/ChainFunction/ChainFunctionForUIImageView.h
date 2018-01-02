//
//  ChainFunctionForUIImageView.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@interface ChainFunctionForUIImageView : NSObject

- (ChainFunctionForUIView *(^)(void)) viewMaker;

#pragma mark -

- (ChainFunctionForUIImageView *(^)(UIImage *)) image;
- (ChainFunctionForUIImageView *(^)(UIImage *)) highlightedImage;
- (ChainFunctionForUIImageView *(^)(BOOL)) userInteractionEnabled;
- (ChainFunctionForUIImageView *(^)(BOOL)) highlighted;
- (ChainFunctionForUIImageView *(^)(NSArray<UIImage *> *)) animationImages;
- (ChainFunctionForUIImageView *(^)( NSArray<UIImage *> *)) highlightedAnimationImages;
- (ChainFunctionForUIImageView *(^)(NSTimeInterval)) animationDuration;
- (ChainFunctionForUIImageView *(^)(NSInteger)) animationRepeatCount;
- (ChainFunctionForUIImageView *(^)(UIColor *)) tintColor NS_AVAILABLE_IOS(7_0);

#pragma mark layer

- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UIImageView (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUIImageView *imageViewChain;

@end
