//
//  ViewController.h
//  DynamicTextfield
//
//  Created by Esperanza on 2022-05-25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
- (void)viewDidLoad;
- (IBAction)userInput:(UITextField *)sender;

@end

