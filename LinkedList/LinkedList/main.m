//
//  main.m
//  LinkedList
//
//  Created by BridgeLabz Solutions LLP on 20/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LList * list = [[LList alloc] init];
        [list insert:10];
        [list insert:20];
        [list insert:5];
        [list insert:30];
        [list insert:12];
        
        [list printValue];
        
        // and to reverse the list and print it...
        list = [list reverseLinkedList];
        [list printValue];
    }
    return 0;
}
