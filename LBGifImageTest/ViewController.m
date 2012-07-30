//
//  ViewController.m
//  LBGifImageTest
//
//  Created by 達郎 植田 on 12/07/30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+GIF.h"
#import "UIImageView+AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize strURL;
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    strURL.text = @"http://farm9.staticflickr.com/8020/7663748202_ef4a400523_o_d.jpg";
}

- (void)viewDidUnload
{
    [self setImageView:nil];
    [self setStrURL:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)download:(id)sender {
    NSURL *url = [NSURL URLWithString:strURL.text];
    UIImage* image = [UIImage animatedGIFNamed:@"loading3"];
    [imageView setImageWithURL:url placeholderImage:image];
}
@end
