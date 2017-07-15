//
//  PLFish.m
//  practikWork5
//
//  Created by Pavel on 28/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLFish.h"


@implementation PLFish

- (id)init
{
    self = [super init];
    if (self) {
        [self setName:@"Yasya"];
    }
    return self;
}
- (void) swim{
    NSLog(@"fish is swimming");
}

- (void) move{
    NSLog(@"Fish to swimming!!!!");
}
@end
