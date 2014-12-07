//
//  TranformationPipelineView.h
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 7/12/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Transformation : NSObject

@end


@interface Translation : Transformation

@property (nonatomic) CGFloat XTranslation;
@property (nonatomic) CGFloat YTranslation;

@end


@interface Rotation : Transformation

@property (nonatomic) CGFloat Angle;

@end


@interface Scale : Transformation

@property (nonatomic) CGFloat XScale;
@property (nonatomic) CGFloat YScale;

@end


@interface TranformationPipelineView : UIView

-(void) addTransformation:(Transformation*)tranformation;

@end
