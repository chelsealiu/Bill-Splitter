//
//  ViewController.h
//  Bill Spitter
//
//  Created by Chelsea Liu on 6/20/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UISlider *partySizeSlider;

@property (weak, nonatomic) IBOutlet UILabel *splitBillLabel;

@property (weak, nonatomic) IBOutlet UILabel *partySizeLabel;

@property (nonatomic) int sliderValue;

- (BOOL) checkNumberFormat: (NSString *) someInput;


@end

