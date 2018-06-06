//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Will Chew on 2018-06-06.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {

    NSString *question2 = [NSString stringWithFormat:@"%ld - %ld?", self.leftValue, self.rightValue];
    self.question = question2 ;
    
    NSInteger answer = self.leftValue - self.rightValue;
    self.answer = answer;
}

@end
