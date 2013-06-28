//
//  ViewController.m
//  Week 7
//
//  Created by Devon Smith on 6/22/13.
//  Copyright (c) 2013 Devon Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize firstNameTxtFld;
@synthesize lastNameTxtFld;
@synthesize textView;

- (void)viewDidLoad
{

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *firstName = [defaults objectForKey:@"firstName"];
    NSString *lastName = [defaults objectForKey:@"lastName"];
    
    firstNameTxtFld.text = firstName;
    lastNameTxtFld.text = lastName;
    

    [self showTextView];

    
    [defaults synchronize];
    
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hideKeyboard:(id)sender {
    [firstNameTxtFld resignFirstResponder];
    [lastNameTxtFld resignFirstResponder];
}

- (void) showTextView
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL enabled = [defaults boolForKey: @"showLabelBool"];
    
    if (enabled) {
        textView.hidden=NO;
    } else {
        textView.hidden=YES;
    }
}

- (IBAction)saveBtn:(id)sender
{
    [firstNameTxtFld resignFirstResponder];
    [lastNameTxtFld resignFirstResponder];
    
    NSString *saveAlert = @"Data Saved";
    NSString *firstName = [firstNameTxtFld text];
    NSString *lastName = [lastNameTxtFld text];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject: firstName forKey:@"firstName"];
    [defaults setObject: lastName forKey:@"lastName"];
    [defaults synchronize];
    NSLog(@"Defaults Saved");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: nil
                                                    message: saveAlert
                                                   delegate: self
                                          cancelButtonTitle: @"OK"
                                          otherButtonTitles: nil];
    
    [alert show];

}
@end
