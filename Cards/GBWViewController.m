//
//  GBWViewController.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/14/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWViewController.h"

@interface GBWViewController ()

@end

@implementation GBWViewController

- (IBAction)clickCard:(UIButton *)sender {
    UIImage *cardBack = [UIImage imageNamed:@"cardback"];
    UIImage *cardFront = [UIImage imageNamed:@"cardfront"];

    int isFront = [sender.currentTitle length];
    if(isFront){
        [sender setTitle:@""
                forState:UIControlStateNormal];
        [sender setBackgroundImage:cardBack
                          forState:UIControlStateNormal];
    } else {
        [sender setTitle:@"A♣︎"
                forState:UIControlStateNormal];
        [sender setBackgroundImage:cardFront
                          forState:UIControlStateNormal];
    }
}

@end
