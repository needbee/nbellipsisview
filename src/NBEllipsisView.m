//
//  NBEllipsisView.m
//  Scriptive
//
//  Created by Josh Justice on 11/27/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import "NBEllipsisView.h"

@interface NBEllipsisView ()

@property (nonatomic,retain) NSMutableArray *dots;

-(void)setUpView;

@end

@implementation NBEllipsisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUpView];
    }
    return self;
}

-(void)setUpView
{
    self.dotSpacing = 10.0; // default
    self.currentDot = -1;
}

-(void)setNumDots:(int)numDots
{
    // TODO: handle changes when already exist
    self.dots = [[NSMutableArray alloc] initWithCapacity:numDots];
    
    // calculate dot spacing
    // TODO: what to do when dots go beyond boundaries of view?
    float dotWidth = _dotImage.size.width / 2; // for retina
    float dotHeight = _dotImage.size.height / 2; // for retina
    float totalWidth = (dotWidth * numDots) + (_dotSpacing * (numDots-1));
    float centerX = self.bounds.size.width / 2;
    float centerY = self.bounds.size.height / 2;
    float startY = floor(centerY - (dotHeight / 2));
    float startX = floor(centerX - (totalWidth / 2));
    float offsetPerDot = dotWidth + _dotSpacing;
    
    // create images
    UIImageView *dot;
    CGRect rect;
    for( int i = 0; i < numDots; i++ ) {
        rect = CGRectMake(floor(startX + i * offsetPerDot),
                          startY, dotWidth, dotHeight);
//        NSLog(@"placing dot %d at %@", i, NSStringFromCGRect(rect));
        dot = [[UIImageView alloc] initWithFrame:rect];
        dot.image = (i == _currentDot) ? _currentDotImage : _dotImage;
        
        [_dots addObject:dot];
        [self addSubview:dot];
    }
}

-(void)setCurrentDot:(int)newDot
{
    if( newDot != _currentDot ) {
        int previousDot = _currentDot;
        _currentDot = newDot;
        
        if( _dots ) {
            UIImageView *dot;
            dot = [_dots objectAtIndex:previousDot];
            dot.image = _dotImage;
            dot = [_dots objectAtIndex:newDot];
            dot.image = _currentDotImage;
        }
    }
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
