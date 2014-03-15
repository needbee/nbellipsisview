//
//  NBViewController.m
//  demo
//
//  Created by Josh Justice on 3/15/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import "NBViewController.h"

@interface NBViewController ()

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _ellipsis.currentDot = 0;
    _ellipsis.numDots = 4;
    _ellipsis.dotSpacing = 17.0;
    _ellipsis.dotImage = [UIImage imageNamed:@"ellipsis_outline"];
    _ellipsis.currentDotImage = [UIImage imageNamed:@"ellipsis_blue"];
    
    int max = 4;
    _scrollView.pagingEnabled = YES;
    _scrollView.contentSize = CGSizeMake(320.0*max, 320.0);
    UILabel *label;
    for( int i = 0; i < max; i++ ) {
        label = [[UILabel alloc] initWithFrame:CGRectMake(320.0 * i, 0.0, 320.0, 320.0)];
        label.text = [NSString stringWithFormat:@"%d", i];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:72.0];
        [_scrollView addSubview:label];
    }
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int i = lroundf(_scrollView.contentOffset.x / _scrollView.bounds.size.width);
    [_ellipsis setCurrentDot:i];
}


@end
