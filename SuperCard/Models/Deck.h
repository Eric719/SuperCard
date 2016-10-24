//
//  Deck.h
//  Machismo
//
//  Created by 刘芳芳 on 16/9/29.
//  Copyright © 2016年 刘芳芳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;


- (Card *)drawRandomCard;

@end
