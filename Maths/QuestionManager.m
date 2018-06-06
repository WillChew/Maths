//
//  QuestionManager.m
//  Maths
//
//  Created by Will Chew on 2018-06-06.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "QuestionManager.h"



@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString *)timeOutput {
    NSInteger totalTimeToAnswer = 0;
    NSInteger count = 0;

    for (Question *question in self.questions) {
        totalTimeToAnswer += question.answerTime ;
        count++;
        
    }
    NSInteger average = (totalTimeToAnswer/count);
    NSString *time = [NSString stringWithFormat:@"total time:%li, average time:%li", totalTimeToAnswer, average];
    return time;
}

@end
