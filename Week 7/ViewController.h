//
//  ViewController.h
//  Week 7
//
//  Created by Devon Smith on 6/22/13.
//  Copyright (c) 2013 Devon Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *firstNameTxtFld;
@property (nonatomic, retain) IBOutlet UITextField *lastNameTxtFld;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)hideKeyboard:(id)sender;
- (void) showTextView;
- (IBAction) saveBtn: (id)sender;


@end
