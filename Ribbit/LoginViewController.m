//
//  LoginViewController.m
//  Ribbit
//
//  Created by Ben Jakuben on 7/30/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.hidesBackButton = YES;
}


- (IBAction)login:(id)sender {
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([username length] == 0 || [password length] == 0) {
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"OOPS!" message:@"Make sure you enter a username and password!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* okButton = [UIAlertAction
                                   actionWithTitle:@"Ok"
                                   style:UIAlertActionStyleDefault
                                   handler: nil];
        [alertView addAction:okButton];
        [self presentViewController:alertView animated:YES completion:nil];
    }
    else {
        
//        [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser *user, NSError *error) {
//            if (error) {
//                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!"
//                                                                    message:[error.userInfo objectForKey:@"error"]
//                                                                   delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//                [alertView show];
//            }
//            else {
                [self.navigationController popToRootViewControllerAnimated:YES];
//            }
//        }];
    }
}

@end
