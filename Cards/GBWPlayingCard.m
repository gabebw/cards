//
//  GBWPlayingCard.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/16/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWPlayingCard.h"

@implementation GBWPlayingCard

@synthesize suit = _suit; // because we provide setter AND getter

// Override getter from superclass
- (NSString *) contents
{
    NSArray *rankStrings = @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7",
                             @"8", @"9", @"10", @"J", @"Q", @"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}


- (void)setSuit:(NSString *)suit
{
    if([@[@"♥", @"♦", @"♠", @"♣"] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

@end
