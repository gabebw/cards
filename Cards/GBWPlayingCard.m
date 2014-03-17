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
    NSString *rankString = [[self class] rankStrings][self.rank];
    return [rankString stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

+ (NSArray *)rankStrings
{
  return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10",
           @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

- (void)setSuit:(NSString *)suit
{
    if([[[self class] validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank
{
    if( rank <= [[self class] maxRank]) {
        _rank = rank;
    }
}

@end
