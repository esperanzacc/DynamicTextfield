//
//  ViewController.m
//  DynamicTextfield
//
//  Created by Esperanza on 2022-05-25.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _textField.delegate = self;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
  range.length = 3;
  range.location = 0;
  NSLog(@"%@", string);
  NSLog(@"length: %lu", (unsigned long)range.length);
  NSLog(@"location: %lu", (unsigned long)range.location);
  // get the user text
  // check if that == red -> change COlOR 
  
  return YES;
}

@end
