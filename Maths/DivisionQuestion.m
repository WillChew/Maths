//
//  DivisionQuestion.m
//  Maths
//
//  Created by Will Chew on 2018-06-06.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    NSString *question2 = [NSString stringWithFormat:@"%ld / %ld?", self.rightValue, self.leftValue];
    self.question = question2;
    
    NSInteger answer = self.leftValue / self.rightValue;
    self.answer = answer;
}

@end
