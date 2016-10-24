//
//  PlayingCardDeck.m
//  Machismo
//
//  Created by 刘芳芳 on 16/9/29.
//  Copyright © 2016年 刘芳芳. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"


@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self){
        for (NSString *suit in [PlayingCard validSuit]){
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}
@end
