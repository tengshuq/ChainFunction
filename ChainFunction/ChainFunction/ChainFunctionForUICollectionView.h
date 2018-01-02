//
//  ChainFunctionForUICollectionView.h
//  ChainFunction
//
//  Created by TengShuQiang on 2018/1/2.
//  Copyright © 2018年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@class ChainFunctionForUIView,ChainFunctionForUIScrollView;
@interface ChainFunctionForUICollectionView : NSObject

- (ChainFunctionForUIView *(^)(void)) viewMaker;

- (ChainFunctionForUIScrollView *(^)(void)) scrollMaker;

#pragma mark - collectionView

- (ChainFunctionForUICollectionView *(^)(UICollectionViewLayout *)) collectionViewLayout;
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDelegate>)) delegate;
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDataSource>)) dataSource;
- (ChainFunctionForUICollectionView *(^)(id<UICollectionViewDataSourcePrefetching>)) prefetchDataSource NS_AVAILABLE_IOS(10_0);
- (ChainFunctionForUICollectionView *(^)(BOOL)) prefetchingEnabled NS_AVAILABLE_IOS(10_0);
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDragDelegate>)) dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDropDelegate>)) dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);;

- (ChainFunctionForUICollectionView *(^)(BOOL)) dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (ChainFunctionForUICollectionView *(^)(UICollectionViewReorderingCadence)) reorderingCadence API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (ChainFunctionForUICollectionView *(^)(UIView *)) backgroundView;
- (ChainFunctionForUICollectionView *(^)(BOOL)) allowsSelection;
- (ChainFunctionForUICollectionView *(^)(BOOL)) allowsMultipleSelection;
- (ChainFunctionForUICollectionView *(^)(BOOL)) remembersLastFocusedIndexPath NS_AVAILABLE_IOS(9_0);

// register class
- (ChainFunctionForUICollectionView *(^)(Class, NSString *)) registerClass;
- (ChainFunctionForUICollectionView *(^)(UINib *, NSString *)) registerNib;
- (ChainFunctionForUICollectionView *(^)(Class, NSString *)) registerHeaderClass;
- (ChainFunctionForUICollectionView *(^)(UINib *, NSString *)) registerHeaderNib;
- (ChainFunctionForUICollectionView *(^)(Class, NSString *)) registerFooterClass;
- (ChainFunctionForUICollectionView *(^)(UINib *, NSString *)) registerFooterNib;

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UICollectionView (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUICollectionView *collectionViewChain;

@end
