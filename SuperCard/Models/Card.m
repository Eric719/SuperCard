//
//  Card.m
//  Machismo
//
//  Created by 刘芳芳 on 16/9/29.
//  Copyright © 2016年 刘芳芳. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score++;
        }
    }
    return score;
}

@end
