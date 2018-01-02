//
//  ChainFunctionForUILabel.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@class ChainFunctionForUIView;
@interface ChainFunctionForUILabel : NSObject

#pragma mark - view

- (ChainFunctionForUIView *(^)(void))viewMaker;

#pragma mark - label
- (ChainFunctionForUILabel *(^)(NSString *)) text;
- (ChainFunctionForUILabel *(^)(UIFont *)) font;
- (ChainFunctionForUILabel *(^)(UIColor *)) textColor;
- (ChainFunctionForUILabel *(^)(UIColor *)) shadowColor;
- (ChainFunctionForUILabel *(^)(CGSize)) shadowOffset;
- (ChainFunctionForUILabel *(^)(NSTextAlignment)) textAlignment;
- (ChainFunctionForUILabel *(^)(NSLineBreakMode)) lineBreakMode;
- (ChainFunctionForUILabel *(^)(NSAttributedString *)) attributedText;

- (ChainFunctionForUILabel *(^)(UIColor *)) highlightedTextColor;
- (ChainFunctionForUILabel *(^)(BOOL)) highlighted;
- (ChainFunctionForUILabel *(^)(BOOL)) userInteractionEnabled;
- (ChainFunctionForUILabel *(^)(BOOL)) enabled;
- (ChainFunctionForUILabel *(^)(NSInteger)) numberOfLines;
- (ChainFunctionForUILabel *(^)(BOOL)) adjustsFontSizeToFitWidth;
- (ChainFunctionForUILabel *(^)(UIBaselineAdjustment)) baselineAdjustment;
- (ChainFunctionForUILabel *(^)(CGFloat)) minimumScaleFactor NS_AVAILABLE_IOS(6_0);

- (ChainFunctionForUILabel *(^)(BOOL)) allowsDefaultTighteningForTruncation NS_AVAILABLE_IOS(9_0);
- (ChainFunctionForUILabel *(^)(CGFloat)) preferredMaxLayoutWidth NS_AVAILABLE_IOS(6_0);

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UILabel (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUILabel *labelChain;

@end
