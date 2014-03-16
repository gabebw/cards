//
//  GBWCard.h
//  Cards
//
//  Created by Gabe Berke-Williams on 3/14/14.
//  Copyright (c) 2014 Gabebw, inc. All rights reserved.
//

@import Foundation;

@interface GBWCard : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(GBWCard *)card;
- (int) matchArray:(NSArray *)otherCards;

@end
