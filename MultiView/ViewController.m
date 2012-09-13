//
//  ViewController.m
//  MultiView
//
//  Created by Apple on 9/13/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "ViewController.h"
#import "MTPopupWindow.h"

@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bg_full.png"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)btnNews:(id)sender {
    [self popUpLinkAndRotation:@"http://r-up.jp/news/"];
}

- (IBAction)btnEcommerce:(id)sender {
    [self popUpLinkAndRotation:@"http://r-up.jp/ecommerce/"];
}

- (IBAction)btnSaleMarket:(id)sender {
    [self popUpLinkAndRotation:@"http://r-up.jp/sales-and-marketing/"];
}

- (IBAction)btnProduct:(id)sender {
    [self popUpLinkAndRotation:@"http://r-up.jp/product/"];
}

- (IBAction)btnInternetMedia:(id)sender {
    [self popUpLinkAndRotation:@"http://r-up.jp/internetmedia/"];
}

- (IBAction)btnContactUs:(id)sender {
    [self popUpLinkAndRotation:@"http://r-up.jp/contact/"];
}

#pragma mark - Pop up link to website URL and Rotation

- (void) popUpLinkAndRotation:(NSString *)url {
    if (self.interfaceOrientation == 1 || self.interfaceOrientation == 2) {
        [MTPopupWindow showWindowWithHTMLFile:url insideView:self.view];
    }
    else {
        [[UIDevice currentDevice] performSelector:NSSelectorFromString(@"setOrientation:") withObject:(id)UIInterfaceOrientationPortrait];
        [MTPopupWindow showWindowWithHTMLFile:url insideView:self.view];
        
    }    
}

@end
