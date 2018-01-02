//
//  ChainFunctionForUIView.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForUICollectionView;
@class ChainFunctionForUITableView
    ,ChainFunctionForUIScrollView
    ,ChainFunctionForUITextView
    ,ChainFunctionForUITextField
    ,ChainFunctionForUIImageView
    ,ChainFunctionForUIButton
    ,ChainFunctionForUILabel
    ,ChainFunctionForUIControl
    ,ChainFunctionForCALayer;
@interface ChainFunctionForUIView : NSObject


- (ChainFunctionForUIView *(^)(NSInteger)) tag;

//UIViewGeometry
- (ChainFunctionForUIView *(^)(CGRect)) frame;
- (ChainFunctionForUIView *(^)(CGRect)) bounds;
- (ChainFunctionForUIView *(^)(CGPoint)) center;
- (ChainFunctionForUIView *(^)(CGAffineTransform)) transform;

- (ChainFunctionForUIView *(^)(CGFloat)) contentScaleFactor;
- (ChainFunctionForUIView *(^)(BOOL)) multipleTouchEnabled;
- (ChainFunctionForUIView *(^)(BOOL)) exclusiveTouch;
- (ChainFunctionForUIView *(^)(BOOL)) autoresizesSubviews;
- (ChainFunctionForUIView *(^)(UIViewAutoresizing)) autoresizingMask;

//UIViewHierarchy
- (ChainFunctionForUIView *(^)(UIEdgeInsets)) layoutMargins NS_AVAILABLE_IOS(8_0);
- (ChainFunctionForUIView *(^)(NSDirectionalEdgeInsets)) directionalLayoutMargins API_AVAILABLE(ios(11.0),tvos(11.0));
- (ChainFunctionForUIView *(^)(BOOL)) preservesSuperviewLayoutMargins NS_AVAILABLE_IOS(8_0);
- (ChainFunctionForUIView *(^)(BOOL)) insetsLayoutMarginsFromSafeArea API_AVAILABLE(ios(11.0),tvos(11.0));

//UIViewRendering
- (ChainFunctionForUIView *(^)(BOOL)) clipsToBounds;
- (ChainFunctionForUIView *(^)(UIColor *)) backgroundColor;
- (ChainFunctionForUIView *(^)(CGFloat)) alpha;
- (ChainFunctionForUIView *(^)(BOOL)) opaque;
- (ChainFunctionForUIView *(^)(BOOL)) clearsContextBeforeDrawing;

- (ChainFunctionForUIView *(^)(BOOL)) hidden;
- (ChainFunctionForUIView *(^)(UIViewContentMode)) contentMode;
- (ChainFunctionForUIView *(^)(UIView *)) maskView NS_AVAILABLE_IOS(8_0);
- (ChainFunctionForUIView *(^)(UIColor *)) tintColor NS_AVAILABLE_IOS(7_0);
- (ChainFunctionForUIView *(^)(UIViewTintAdjustmentMode)) tintAdjustmentMode NS_AVAILABLE_IOS(7_0);

//UIConstraintBasedCompatibility
- (ChainFunctionForUIView *(^)(BOOL)) translatesAutoresizingMaskIntoConstraints NS_AVAILABLE_IOS(6_0);

//------------------------
- (ChainFunctionForUIView *(^)(UIView *)) addSubview;
- (ChainFunctionForUIView *(^)(UIView *)) addToSuperView;

#pragma mark layer

- (ChainFunctionForCALayer *(^)(void)) layerMaker;

#pragma mark - subviews
- (ChainFunctionForUILabel *(^)(void))labelMaker;
- (ChainFunctionForUIButton *(^)(void))buttonMaker;
- (ChainFunctionForUIImageView *(^)(void))imageViewMaker;
- (ChainFunctionForUITextField *(^)(void))textFieldMaker;
- (ChainFunctionForUITextView *(^)(void))textViewMaker;
- (ChainFunctionForUIScrollView *(^)(void))scrollViewMaker;
- (ChainFunctionForUITableView *(^)(void))tableViewMaker;
- (ChainFunctionForUIControl *(^)(void))controlMaker;
- (ChainFunctionForUICollectionView *(^)(void))collectionViewMaker;

@end

@interface UIView (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUIView *viewChain;

@end
