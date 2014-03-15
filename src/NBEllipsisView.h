//
//  NBEllipsisView.h
//  Scriptive
//
//  Created by Josh Justice on 11/27/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NBEllipsisView : UIView

@property (nonatomic,retain) UIImage *dotImage;
@property (nonatomic,retain) UIImage *currentDotImage;
@property (nonatomic,assign) float dotSpacing;
@property (nonatomic,assign) int currentDot;

-(void)setNumDots:(int)numDots;

@end
