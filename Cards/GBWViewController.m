//
//  GBWViewController.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/14/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWViewController.h"
#import "GBWPlayingCardDeck.h"
#import "GBWPlayingCard.h"

@interface GBWViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) GBWPlayingCardDeck *deck;
@end

@implementation GBWViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    NSString *newText = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    self.flipsLabel.text = newText;
    NSLog(@"flip count = %d", self.flipCount);
}

-(GBWPlayingCardDeck *)deck {
    if(! _deck){
        _deck = [[GBWPlayingCardDeck alloc] init];
    }
    
    return _deck;
}

- (IBAction)clickCard:(UIButton *)sender {
    GBWCard *nextCard = [self.deck drawRandomCard];
    
    [sender setTitle:[nextCard contents]
            forState:UIControlStateNormal];
    
    // Trigger setFlipCount
    self.flipCount++;
}

@end
