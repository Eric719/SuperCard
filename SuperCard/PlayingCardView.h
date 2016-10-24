//
//  PlayingCardView.h
//  SuperCard
//
//  Created by 刘芳芳 on 16/10/18.
//  Copyright © 2016年 刘芳芳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSInteger rank;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;
- (void)pinch:(UIPinchGestureRecognizer *)gesture;
@end
