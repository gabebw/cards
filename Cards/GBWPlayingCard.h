//
//  GBWPlayingCard.h
//  Cards
//
//  Created by Gabe Berke-Williams on 3/16/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

#import "GBWCard.h"

@interface GBWPlayingCard : GBWCard

@property (strong, nonatomic) NSString *suit;
// Using NSUInteger instead of `unsigned int`
// NSUInteger is typedef'd so it automatically
// works on all platforms (e.g. 32-bit vs 64-bit).
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;

@end
