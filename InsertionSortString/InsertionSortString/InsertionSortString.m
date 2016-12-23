
#import "Header.h"
#import <Foundation/Foundation.h>

@implementation InsertionSort

-(void)getString:(NSMutableArray*)array{
  // data=[array copy];
   
    [self insertion_sort:array];
  
    printf("\nGiven Array:\n");
    [self display:array];
}

-(void)display:(NSMutableArray*)array{
    int i;
  for(i=0;i<array.count;i++)
    {
        NSLog(@"%@",[array objectAtIndex:i]);
    }
}

-(void)insertion_sort:(NSMutableArray*)array{
   
    /*
    int i;
    for(i=1;i<data.count;i++)
    {
        int value=data[i];
        int holep=i;
        while (holep>0 && data[holep-1]>value)
        {
            data[holep]=data[holep-1];
            holep=holep-1;
        }
        data[holep]=value;
    }
    printf("\nSorted Array:\n");
    [self display:data];
   */
}

@end

