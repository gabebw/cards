//
//  GBWDeck.h
//  Cards
//
//  Created by Gabe Berke-Williams on 3/16/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBWCard.h"

@interface GBWDeck : NSObject

// Takes 2 arguments
// Referred to as `addCard:atTop`
- (void)addCard:(GBWCard *)card atTop:(BOOL)atTop;
- (void)addCard:(GBWCard *)card;
- (BOOL)hasCards;

-(GBWCard *)drawRandomCard;

@end
