//
//  ViewController.m
//  textEditor
//
//  Created by Zeng Sean on 2014/9/1.
//  Copyright (c) 2014年 Sean, Zeng. All rights reserved.
//

#import "ViewController.h"
#import "TextStatusViewController.h"


@implementation ViewController



/*-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"GoStatus"])
        if([segue.destinationViewController isKindOfClass:(TextStatusViewController class)]){
            
        }
}*/



/*- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableAttributedString *title =
    [[NSMutableAttributedString alloc] initWithString:self.outlineButton.currentTitle];
    [title setAttributes:@{ NSStrokeWidthAttributeName: @3,
                            NSStrokeColorAttributeName: self.outlineButton.tintColor }
                   range:NSMakeRange(0, [title length])];
}*/



- (IBAction)ColorChangeButton:(UIButton *)sender {
    
    [self.BodyText.textStorage addAttribute:NSForegroundColorAttributeName
                                      value:sender.backgroundColor
                                      range:self.BodyText.selectedRange];
}


- (IBAction)OutlineSelectedWords:(UIButton *)sender {
    [self.BodyText.textStorage addAttributes:@{NSStrokeWidthAttributeName: @-3,
                                               NSStrokeColorAttributeName: [UIColor blackColor]}
                                       range:self.BodyText.selectedRange];
    
}
- (IBAction)RemoveOuline:(UIButton *)sender {
    [self.BodyText.textStorage removeAttribute:NSStrokeWidthAttributeName
                                         range:self.BodyText.selectedRange];
    
    
}






@end
