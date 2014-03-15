//
//  NBViewController.h
//  demo
//
//  Created by Josh Justice on 3/15/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NBEllipsisView.h"

@interface NBViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic,retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic,retain) IBOutlet NBEllipsisView *ellipsis;

@end
