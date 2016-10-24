//
//  PlayingCardGameViewController.m
//  Machismo
//
//  Created by 刘芳芳 on 16/10/16.
//  Copyright © 2016年 刘芳芳. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
