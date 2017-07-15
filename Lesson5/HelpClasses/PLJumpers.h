//
//  PLJumpers.h
//  practikWork5
//
//  Created by Pavel on 31/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PLJumpers
@property (assign, nonatomic) NSInteger maxJump;
@property (strong, nonatomic) NSString* stick;

@required
-(void) jump;
@optional
-(void) breathe;

@end
