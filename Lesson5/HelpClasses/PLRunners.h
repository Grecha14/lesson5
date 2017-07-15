//
//  PLRunners.h
//  practikWork5
//
//  Created by Pavel on 31/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PLRunners 

@property (assign, nonatomic) NSInteger pulser;

@required
-(void) run;

@optional
-(void) accelerate;
@end
