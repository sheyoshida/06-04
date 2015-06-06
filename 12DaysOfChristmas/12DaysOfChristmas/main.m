//
//  main.m
//  12DaysOfChristmas
//
//  Created by Henna on 6/4/15.
//  Copyright (c) 2015 Henna Ahmed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *cardinal = @[@"first", @"second", @"third", @"fourth", @"fifth", @"sixth", @"seventh", @"eighth", @"ninth", @"tenth", @"eleventh", @"twelfth"];
        NSString *song;

        
        for (int i = 0; i < [cardinal count]; i++) {
            song =[song stringByAppendingString:[NSString stringWithFormat:@"On the %@ day of Christmas my true love sent to me \n", [cardinal objectAtIndex:i]]];
            NSLog(@"%@", song);
        }

    }
    return 0;
}
