//
//  TranformationPipelineView.m
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 7/12/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import "TranformationPipelineView.h"

@implementation Transformation

@end


@implementation Translation

@end


@implementation TranformationPipelineView

NSMutableArray* tranformationPipeline;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        tranformationPipeline = [NSMutableArray arrayWithCapacity:10];
        
        Translation* translation = [[Translation alloc] init];
        translation.XTranslation = 100;
        translation.YTranslation = 200;
        
        [tranformationPipeline addObject:translation];
    }
    return self;
}

-(void) addTransformation:(Transformation*)tranformation
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
