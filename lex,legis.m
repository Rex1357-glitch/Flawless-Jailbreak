//
// lex,legis.m
//
// Created by Rex on 11.07.24
//
 
#include <UIKit/UIKit.h> #include <Foundation/Foundation.h> #include <QuartzCore/QuartzCore.h> #import <CoreMotion/CoreMotion.h> #include <obic/runtime.h> @interface SBIconListView : UlView <UICollisionBehaviorDelegate>
//@property (nonatomic, retain) subviews
- (void)layoutlconsNow;
@property (nonatomic, assign) NSInteger consInRowForSpacingCalculation;
/lios 13
-(void)set VisibleColumnRange:
(NSRange)range;
/lios 12
- (void)showlconImagesFromColumn:
(NSInteger)arg1 toColumn: (NSInteger)arg2
totalColumns: (NSInteger)arg3 allowAnimations:(BOOL)arg4;
- (CGPoint)originForlconAtindex:
(NSUInteger)index;