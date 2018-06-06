//
//  ScoreKeeper.m
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "ScoreKeeper.h"
#import "InputHandler.h"
//#import "AdditionQuestion.h"

@implementation ScoreKeeper

- (NSString*)calculateScore {
    
    
    NSString *output = [NSString stringWithFormat:@"Score: %ld right, %ld wrong ---- %ld%% ", self.right, self.wrong, (100*self.right)/(self.right + self.wrong)];
    
    NSLog(@"%@", output);
    
    return output;
    
}


@end
