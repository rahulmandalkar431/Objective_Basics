
#import "Insertion.h"
#import <Foundation/Foundation.h>

@implementation InsertionSort

-(void)getNumber:(int[])number{
    int i;
    for(i=0;i<10;i++)
    {
        data[i]=number[i];
    }
    printf("\nGiven Array:\n");
    [self display:data];
}
-(void)display:(int[])number{
    int i;
    
    for(i=0;i<10;i++)
    {
        printf("%d \t",number[i]);
    }
}
-(void)insertion_sort{
    int i;
    for(i=1;i<10;i++)
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
}

@end

