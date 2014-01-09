//
//  ViewController.m
//  MySafari
//
//  Created by Sonam Mehta on 1/9/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate, UITextFieldDelegate>
{
    
    __weak IBOutlet UIWebView *myWebView;
    __weak IBOutlet UITextField *myURLTextField;
    __weak IBOutlet UIButton *backButton;
    __weak IBOutlet UIButton *forwardButton;
}

@end

@implementation ViewController

- (IBAction)onBackButtonPressed:(id)sender {
    [myWebView goBack];
    
}
- (IBAction)onForwardButtonPressed:(id)sender {
    [myWebView goForward];

}
- (IBAction)onStopLoadingButtonPressed:(id)sender {
    [myWebView stopLoading];
    
}
- (IBAction)onReloadButtonPressed:(id)sender {
    [myWebView reload];
}

- (BOOL)textFieldShouldReturn:(UITextField *)tf
{
    
    NSURL *url = [NSURL URLWithString:myURLTextField.text];
    NSURLRequest *rq = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:rq];
    [myURLTextField resignFirstResponder];
    return YES;
    
    
}


@end
