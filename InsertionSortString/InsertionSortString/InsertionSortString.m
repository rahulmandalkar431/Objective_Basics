
#import "Header.h"
#import <Foundation/Foundation.h>

@implementation InsertionSort

-(void)getString:(NSMutableArray*)array{
 
   data=[[NSMutableArray alloc]init];
   
  
  
    printf("\nGiven Array:\n");
    [self display:array];
    [self insertion_sort:array];
   
}

-(void)display:(NSMutableArray*)array{
   
    data=[array copy];
  // data= (NSMutableArray*)[array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
   NSLog(@"Data Count:%d",(int)[data count]);
   
        NSLog(@"%@",data);
    
}

-(void)insertion_sort:(NSMutableArray*)array{
   
    
    int i;
    for(i=1;i<data.count;i++)
    {
        
        NSString *value=[data objectAtIndex:i];
        int holep=i;
       
        while (holep>0 && [data objectAtIndex:holep-1]>value)
        {
            //data[holep]=data[holep-1];
            NSString *str=[data objectAtIndex:holep-1];
            [data replaceObjectAtIndex:holep withObject:str];
            holep=holep-1;
        }
        //data[holep]=value;
        [data replaceObjectAtIndex:holep withObject:value];
    }
    if([data objectAtIndex:0]>[data objectAtIndex:1]){
        NSLog(@"Hello");
    }
    else{
        NSLog(@"Bye");
    }
    printf("\nSorted Array:\n");
    NSLog(@"%@",data);
   
}

@end

