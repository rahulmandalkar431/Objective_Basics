//
//  main.m
//  JSONRead
//
//  Created by BridgeLabz Solutions LLP on 23/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *file= @"/Users/bridgelabz/Documents/Objective_Basics/JSONRead/JSONRead/read.json";
        
        
        NSError *error;
        NSString *content =[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
      
        NSData *data1 = [content dataUsingEncoding:NSUTF8StringEncoding];
      
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data1
                                                  options:NSJSONReadingAllowFragments
                                                    error:&error];
        NSLog(@"JSON: %@", dict);
        
        
      /*
        NSData *data=[NSData dataWithContentsOfFile:@"/Users/bridgelabz/Documents/rahul.json" options:NSDataReadingMappedIfSafe error:&error];
        NSMutableDictionary *dict=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSLog(@"DATA IS:%@",dict);
        */
    }
    return 0;
}
