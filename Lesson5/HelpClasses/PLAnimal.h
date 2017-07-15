//
//  PLAnimal.h
//  practikWork5
//
//  Created by Pavel on 28/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLHuman.h"

@interface PLAnimal : PLHuman

@property (strong, nonatomic) NSString* type;
@property (strong, nonatomic) NSString* color;
@property (assign, nonatomic) NSInteger maxAge;

- (void) move;

@end
