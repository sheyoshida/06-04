//
//  main.m
//  Variables2
//
//  Created by Henna on 6/4/15.
//  Copyright (c) 2015 Henna Ahmed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *teachers = @[@"Mr. readsALot", @"Mrs. runsALot", @"Mr. singsALot"],
                *classes = @[@"English", @"Gym", @"Music"];
        NSString *finalOutput,
                *courseInfo,
                *border = @"\n+";
        
        //Create top and bottom borders
        //comment comment
        for (int i = 0; i<50; i++) {
            border = [border stringByAppendingString:@"-"];
        }
        
        border = [border stringByAppendingString:@"+ \n"];
        
        finalOutput = border;
        
        for (int i = 0; i<[teachers count]; i++) {
            int max = [[classes objectAtIndex:0] length];
            int cur = [[classes objectAtIndex:i] length];
            courseInfo = [NSString stringWithFormat:@"|%d| %@ | %@", i, [teachers objectAtIndex:i], [classes objectAtIndex:i]];

            
            if (cur < max) {
                int numOfSpaces = max - cur;
                courseInfo = [NSString stringWithFormat:@"%@%*c", courseInfo, numOfSpaces, ' '];
            }
            courseInfo = [NSString stringWithFormat:@"%@|\n", courseInfo];
            finalOutput = [finalOutput stringByAppendingString:courseInfo];
        }
        
        finalOutput = [finalOutput stringByAppendingString:border];
        
        NSLog(@"%@", finalOutput);
        
        
    }
    return 0;
}
