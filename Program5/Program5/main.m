//
//  main.m
//  Program5
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Harmonic.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int harm_rang;
        printf("\nEnter harmonic range:");
        scanf("%d",&harm_rang);
        
        Harmonic *hm =[[Harmonic alloc]init];
        
        [hm getHrang:harm_rang];
        [hm calculate];
        

    }
    return 0;
}
