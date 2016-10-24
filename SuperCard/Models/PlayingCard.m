//
//  PlayingCard.m
//  Machismo
//
//  Created by 刘芳芳 on 16/9/29.
//  Copyright © 2016年 刘芳芳. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if([otherCards count] == 1){
        PlayingCard *otherCard = [otherCards firstObject];
        if(otherCard.rank == self.rank){
            score = 4;
        }else if(otherCard.suit == self.suit){
            score = 1;
        }
    }
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuit
{
    return @[@"♥︎",@"♠︎",@"♦︎",@"♣︎"];
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuit] containsObject:suit]){
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}
@end
