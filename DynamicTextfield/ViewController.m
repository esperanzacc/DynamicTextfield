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
- (IBAction)userInput:(UITextField *)sender {
  NSString *text = [sender text];
//  NSLog(@"%@", text);
  NSArray *words = [text componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
  NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc] initWithString:text];
  NSInteger location = 0;
  NSMutableArray *ranges = [NSMutableArray new];
  
  for (NSString *word in words) {
    if ([[word lowercaseString] isEqualToString:@"red"]) {
      [ranges addObject:@[ @(location), @([word length])]];
//      NSLog(@"%@",ranges);
    }
    location += [word length] + 1;
  }
  for (NSArray *range in ranges) {
    [attributeStr addAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} range:NSMakeRange([[range objectAtIndex:0] integerValue], [[range objectAtIndex:1] integerValue])];
    _textField.attributedText = attributeStr;
  }
}

@end
