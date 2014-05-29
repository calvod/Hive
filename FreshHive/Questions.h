//
//  Questions.h
//  FreshHive
//
//  Created by Diego Calvo on 5/28/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Questions : NSObject {
    NSMutableArray *questions;
    NSMutableArray *answers;
    NSNumber *current;
    NSNumber *count;
}

@property(nonatomic,retain)NSMutableArray *questions;
@property(nonatomic,retain)NSMutableArray *answers;
@property(nonatomic,retain)NSNumber *current;
@property(nonatomic, retain)NSNumber *count;

+(Questions*)getInstance;
@end
