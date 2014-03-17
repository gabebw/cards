//
//  GBWPlayingCardDeck.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/16/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWPlayingCardDeck.h"
#import "GBWPlayingCard.h"


@implementation GBWPlayingCardDeck

// Override the `init` in [[MyClass alloc] init]
- (instancetype)init
{
    self = [super init];
    
    if (self){
        for(NSString *suit in [GBWPlayingCard validSuits]){
            for(NSUInteger rank = 1; rank <= [GBWPlayingCard maxRank]; rank++){
                GBWPlayingCard *card = [[GBWPlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
