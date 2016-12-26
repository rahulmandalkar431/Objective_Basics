
#import "Header.h"
#import <Foundation/Foundation.h>

@implementation InsertionSort


-(id)init{
    self =[super init];
    if (self)
    {
         data=[[NSMutableArray alloc]init];
    }
    return self;
}
-(void)getString:(NSMutableArray*)array{
    data=[array copy];

    [self display];
    [self insertion_sort:array];
    
}

-(void)display{
   NSLog(@"Data Count:%d",(int)[data count]);
   NSLog(@"Data:%@",data);
}

-(void)insertion_sort:(NSMutableArray*)array{
    int i;
    NSString *string[[array count]];
    for (i=0; i<array.count; i++) {
        string[i]=(NSString*)[array objectAtIndex:i];
    }
    
    
    for(i=1;i<data.count;i++)
    {
      
        NSString* value=string[i];
        int holep=i;
       
        while (holep>0 && string[holep-1]>value)
        {
           string[holep]=string[holep-1];
            holep=holep-1;
        }
        string[holep]=value;

        
    }
    
    printf("\nSorted Array:\n");
    for (i=0; i<data.count; i++) {
         NSLog(@"%@",string[i]);
    }
   
   
}

@end

