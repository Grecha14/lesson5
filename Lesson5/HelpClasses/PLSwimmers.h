//
//  PLSwimmers.h
//  practikWork5
//
//  Created by Pavel on 31/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PLSwimmers 

@property (assign, nonatomic) NSInteger distance;
@property (assign, nonatomic) NSInteger timeDistance;

@required
-(void) swim;
@optional
-(void) dive;

@end
