//
//  AppDelegate.m
//  Lesson5
//
//  Created by Павел Лахно on 15.07.17.
//  Copyright © 2017 Павел Лахно. All rights reserved.
//

#import "PLAppDelegate.h"
#import "PLHuman.h"
#import "PLCyclist.h"
#import "PLSwimmer.h"
#import "PLRunner.h"
#import "PLProperty.h"
#import "PLAnimal.h"
#import "PLInsect.h"
#import "PLFish.h"
#import "PLBird.h"

#import "PLSwimmers.h"

@interface PLAppDelegate ()

@end

@implementation PLAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    PLCyclist* cyclist = [[PLCyclist alloc]init];
    cyclist.name = @"Vasia";
    cyclist.height = 180;
    cyclist.weight=80;
    cyclist.gender = PLMale;
    
    PLRunner* runner = [[PLRunner alloc]init];
    runner.name=@"Andrew";
    runner.height=175;
    runner.weight=70;
    runner.gender=PLMale;
    
    PLSwimmer* swimmer = [[PLSwimmer alloc]init];
    swimmer.name=@"Olga";
    swimmer.height=160;
    swimmer.weight=65;
    swimmer.gender=PLWoman;
    
    PLProperty* worker = [[PLProperty alloc]init];
    worker.name = @"Boris";
    worker.hair = @"He has got the brown hair";
    worker.years = 28;
    
    ////////////////////////////////////////////////////////////////////
    
    PLFish* fish = [[PLFish alloc]init];
    fish.color = @"grown";
    fish.type = @"SOM";
    fish.maxAge = 5;
    //fish.distance = 98;
    //fish.timeDistance = 11;
    [fish swim];
    
    PLBird* bird = [[PLBird alloc]init];
    bird.color = @"yellow";
    bird.type = @"CACADU";
    bird.maxAge=100;
    
    PLInsect* insect = [[PLInsect alloc]init];
    insect.maxAge=1;
    insect.color=@"brown";
    insect.type = @"ANT";
    
    
    NSArray* human = [NSArray arrayWithObjects:cyclist,runner,swimmer,worker, nil];
    NSArray* animal = [NSArray arrayWithObjects:fish, insect, bird, nil];
    
    NSArray* all = [NSArray arrayWithObjects:human,animal, nil];
    
    for(id obj in all){
        if(obj == human){
            for(PLHuman* obj1 in human){
                NSLog(@"human");
                NSLog(@"name = %@", obj1.name);
                NSLog(@"height = %ld", obj1.height);
                NSLog(@"weight = %ld", obj1.weight);
                
                
                if([obj1 gender]==1){
                    NSLog(@"Woman");
                }
                else NSLog(@"Male");
                [obj1 move];
                if ([obj1 isKindOfClass:[PLProperty class]]){
                    
                    PLProperty* human2 = (PLProperty*) obj1;
                    NSLog(@"%ld", human2.years);
                    NSLog(@"%@", human2.hair);
                    [human2 work];
                    [human2 superMove];
                }
                [obj1 move];
            }
        }
        else{
            for(PLAnimal* obj2 in animal){
                NSLog(@"animal");
                NSLog(@"type = %@",obj2.type);
                NSLog(@"color = %@",obj2.color);
                NSLog(@"maxAge = %ld",obj2.maxAge);
                [obj2 move];
            }
        }
    }
    
    /*
     for(PLHuman* obj in human){
     NSLog(@"name = %@", obj.name);
     NSLog(@"height = %d", obj.height);
     NSLog(@"weight = %d", obj.weight);
     if([obj gender]==1){
     NSLog(@"Woman");
     }
     else NSLog(@"Male");
     
     [obj move];
     if ([obj isKindOfClass:[PLProperty class]]){
     
     PLProperty* human = (PLProperty*) obj;
     NSLog(@"%d", human.years);
     NSLog(@"%@", human.hair);
     [human work];
     [human superMove];
     }
     [obj move];
     }
     */
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
