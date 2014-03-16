//
//  GBWCard.m
//  Cards
//
//  Created by Gabe Berke-Williams on 3/14/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWCard.h"

@interface GBWCard()

@end

@implementation GBWCard

- (int)match:(GBWCard *)card
{
    int score = 0;
    
    if([card.contents isEqualToString:self.contents]){
        score = 1;
    }
    
    return score;
}

- (int)matchArray:(NSArray *)otherCards
{
    int score = 0;
    
    for(GBWCard *card in otherCards) {
        // 1 point if this card matches *any* card in the array
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}
@end
