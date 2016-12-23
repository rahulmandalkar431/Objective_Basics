//
//  main.m
//  NotesChange
//
//  Created by BridgeLabz Solutions LLP on 19/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Notes.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Notes *nt =[[Notes alloc]init];
        int notes[]={1000,500,100,50,20,10,5,2,1};
        int m=sizeof(notes)/sizeof(notes[0]);
        int note=150;
        int len=[nt minNotes:notes andSize:m andNote:note];
       printf("\nValueOf len:%d",len);
    }
    return 0;
}
