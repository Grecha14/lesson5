//
//  PLAnimal.m
//  practikWork5
//
//  Created by Pavel on 28/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLAnimal.h"

@implementation PLAnimal

- (id)init
{
    self = [super init];
    if (self) {
        self.type=@"animal";
        self.color=@"white";
        self.maxAge=0;
    }
    return self;
}

-(void) move{
    NSLog(@"Animal is nothing doing");
}

@end
