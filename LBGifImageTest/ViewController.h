//
//  ViewController.h
//  LBGifImageTest
//
//  Created by 達郎 植田 on 12/07/30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *strURL;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)download:(id)sender;
@end
