//
//  Notes.m
//  NotesChange
//
//  Created by BridgeLabz Solutions LLP on 19/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Notes.h"

@implementation Notes

-(int)minNotes:(int[])Notes andSize:(int)m andNote:(int)note{
    int i;
    if(note==0){
        return 0;
    }
    int result=INT_MAX;
    //printf("\n%d",result);
    for (i=0;i<m;i++)
    {
        if (Notes[i]<=note)
        { //  printf("\nNote[i]:%d",Notes[i]);
          //  printf("\nSUB:%d",note-Notes[i]);
            int notcnt=[self minNotes:Notes andSize:m andNote:note-Notes[i]];
            if (notcnt!=INT_MAX && notcnt+1<result)
            {
                result=notcnt+1;
            }
           // printf("\nNot CNT:%d",notcnt);
           
        }
    }
     //printf("Result:%d",result);
    
return result;
}


@end
