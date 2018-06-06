//
//  ScoreKeeper.h
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger right;
@property (nonatomic, assign) NSInteger wrong;



- (NSString*)calculateScore;

@end
