//
//  GBWDeck.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/16/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWDeck.h"

@interface GBWDeck()
// Internal (private) property
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation GBWDeck

- (NSMutableArray *)cards
{
    // Default implementation returns 0, which won't crash, but also won't do
    // anything. So we initialize the array.
    if(! _cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (BOOL)hasCards
{
    return [self.cards count];
}

- (void) addCard:(GBWCard *)card atTop:(BOOL)atTop
{
    if( atTop ) {
        [self.cards insertObject:card atIndex:0];
    } else {
        // Add to end of array
        [self.cards addObject:card];
    }
}

- (void)addCard:(GBWCard *)card
{
    [self addCard:card atTop:NO];
}

- (GBWCard *)drawRandomCard
{
    GBWCard *randomCard = nil;
    
    if ([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
