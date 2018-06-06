//
//  QuestionFactory.m
//  Maths
//
//  Created by Will Chew on 2018-06-06.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init {
    if (self = [super init]) {
        NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
        _questionSubclassNames = questionSubclassNames;
    }
    return self;
}


- (Question*)generateRandomQuestion {

    NSString *pickOne = [self.questionSubclassNames objectAtIndex:arc4random_uniform(self.questionSubclassNames.count)];
    
   Question *randomClass = [[NSClassFromString(pickOne) alloc]init];
    
    
    return randomClass;
    
}

@end
