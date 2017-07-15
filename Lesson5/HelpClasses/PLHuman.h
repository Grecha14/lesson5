//
//  PLHuman.h
//  practikWork5
//
//  Created by Pavel on 26/05/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum{
    PLMale,
    PLWoman
}PLGender;

@interface PLHuman : NSObject
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) NSInteger weight;
@property (assign, nonatomic) PLGender gender;
- (void) move;
- (void) superMove;

@end
