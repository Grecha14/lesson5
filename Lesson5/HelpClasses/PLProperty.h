//
//  PLProperty.h
//  practikWork5
//
//  Created by Pavel on 26/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLHuman.h"

@interface PLProperty : PLHuman

@property (strong, nonatomic) NSString* hair;
@property (assign, nonatomic) NSInteger years;

- (void) work;

@end
