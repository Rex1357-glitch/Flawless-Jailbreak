//
// new.m
//
// Created by Rex on 11.07.24
//
 
#include "Gravitation.h"
// Custom properties for Gravitation
@interface SBIconListView (Gravitation)
@property (nonatomic, strong)CMMotionManager
*gravitation_motionManager;
@property (nonatomic, retain)UIDynamicAnimator
*gravitation_gravitationAnimator;
@property (nonatomic, retain)UlGravityBehavior
*gravitation_gravitationBehavior;
@property (nonatomic, retain)UIFieldBehavior
*gravitation_fingerGravBehavior;
@property (nonatomic, retain)UICollisionBehavior
*gravitation_gravitationCollisionBehavior;
@property (nonatomic, assign)BOOL gravitation_observersAdded;
@property (nonatomic, assign)BOOL gravitation_isReadyForMemoryFuck;