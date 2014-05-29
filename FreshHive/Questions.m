//
//  Questions.m
//  FreshHive
//
//  Created by Diego Calvo on 5/28/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "Questions.h"

@implementation Questions

@synthesize questions;
@synthesize answers;
@synthesize current;
@synthesize count;

static Questions *instance = nil;

+(Questions *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [Questions new];
        }
    }
    return instance;
}
@end
