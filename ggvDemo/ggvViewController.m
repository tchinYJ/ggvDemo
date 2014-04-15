//
//  ggvViewController.m
//  ggvDemo
//
//  Created by 陳　鼎 on 2014/04/15.
//  Copyright (c) 2014年 tchin. All rights reserved.
//

#import "ggvViewController.h"

@interface ggvViewController ()

@end

@implementation ggvViewController
{
    NSTimer *countTimer;
    NSArray *aryImage;
    int imageIndex;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    imageIndex = 0;
    
    countTimer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                    target:self
                                                    selector:@selector(nextImage:)
                                                    userInfo:nil
                                                    repeats:YES];
    aryImage = [NSArray arrayWithObjects:
                        [UIImage imageNamed:@"cat.png"],
                        [UIImage imageNamed:@"dolphin.png"],
                        nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nextImage: (NSTimer *)timer
{
    self.imageView.image = [aryImage objectAtIndex:imageIndex];
    
    if(imageIndex == 0)
        imageIndex = 1;
    else
        imageIndex = 0;
}

@end
