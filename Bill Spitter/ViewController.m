//
//  ViewController.m
//  Bill Spitter
//
//  Created by Chelsea Liu on 6/20/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)adjustPartySize:(id)sender {
    self.partySizeSlider.userInteractionEnabled = YES;
    self.partySizeSlider.maximumValue = 8;
    self.partySizeSlider.minimumValue = 2;
    self.sliderValue = (int)roundf(self.partySizeSlider.value);
    self.partySizeLabel.text = [@"Party size: " stringByAppendingString:[NSString stringWithFormat:@"%i", self.sliderValue]];

}


- (IBAction)splitBillButton:(id)sender {
    
    NSString *billInput = [self.billAmountTextField text];
    
    if ([self checkNumberFormat: billInput] == true && self.sliderValue != 0) {
        double tempBillAmount = [billInput doubleValue];
        [self adjustPartySize:self.partySizeSlider];
        double tempSplitBill = tempBillAmount/self.sliderValue;
        NSLog(@"%f", tempSplitBill);
        NSString *finalString = [NSString stringWithFormat:@"%.2f", tempSplitBill];
        self.splitBillLabel.text = [@"Each person will pay $" stringByAppendingString:finalString];
    } else {
        self.splitBillLabel.text = @"That is not a valid input.";
    }

    
    

}


- (BOOL) checkNumberFormat: (NSString *) someInput {
    
    bool isNum = false;
    int counter = 0;
    
    for (int i = 0; i < [someInput length]; i++) {
        unichar c = [someInput characterAtIndex:i];
        if (c >= '0' && c <= '9') {
            isNum = true;
        } else if (c == '.') {
            isNum = true;
            counter ++;
        } else {
            isNum = false;
            break;
        }
    }
    
    if (isNum == false || counter > 1) {
        return false;
        
    } else {
        return true;
    }
    
}
        

@end
