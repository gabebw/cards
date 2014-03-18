//
//  GBWViewController.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/14/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWViewController.h"
#import "GBWPlayingCardDeck.h"
#import "GBWCard.h"

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
    UIImage *cardBack = [UIImage imageNamed:@"cardback"];
    UIImage *cardFront = [UIImage imageNamed:@"cardfront"];

    int isFront = [sender.currentTitle length];
    
    if(isFront){
        [sender setTitle:@""
                forState:UIControlStateNormal];
        [sender setBackgroundImage:cardBack
                          forState:UIControlStateNormal];
    } else {
        if([self.deck hasCards]){
            GBWCard *card = [self.deck drawRandomCard];
            [sender setTitle:card.contents
                    forState:UIControlStateNormal];
        } else {
            [sender setTitle:@"N/A"
                    forState:UIControlStateNormal];
        }
        [sender setBackgroundImage:cardFront
                          forState:UIControlStateNormal];
    }
    
    // Trigger setFlipCount
    self.flipCount++;
}

@end
