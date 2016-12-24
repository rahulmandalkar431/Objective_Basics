
#import "Header.h"
#import <Foundation/Foundation.h>

@implementation InsertionSort
@synthesize data=_data;
-(id)init{
    self =[super init];
    if (self)
    {
         self.data=[[NSMutableArray alloc]init];
    }
    return self;
}
-(void)getString:(NSMutableArray*)array{
 
  
   
  
  
    printf("\nGiven Array:\n");
    [self display:array];
    [self insertion_sort:array];
    
}

-(void)display:(NSMutableArray*)array{
   
     self.data=[array copy];
  // data= (NSMutableArray*)[array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
   NSLog(@"Data Count:%d",(int)[self.data count]);
   
        NSLog(@"%@",self.data);
    NSLog(@"Object at index 0:%@",[self.data objectAtIndex:0]);
    
}

-(void)insertion_sort:(NSMutableArray*)array{
   
    
    int i;
    for(i=1;i<self.data.count;i++)
    {
        //NSInteger value=i;
        NSString* value=self.data[i];
        int holep=i;
        NSString *str;
        while (holep>0 && [self.data objectAtIndex:holep-1]>value)
        {
           // data[holep]=data[holep-1];
            //str=[data objectAtIndex:holep-1];
            str=self.data[holep-1];
            [data replaceObjectAtIndex:holep withObject:str];
           // int len=holep-1;
           //[data exchangeObjectAtIndex:holep withObjectAtIndex:len];
            holep=holep-1;
        }
        //data[holep]=value;
        
      [[self data] replaceObjectAtIndex:holep withObject:value];
        
    }
    if([self.data objectAtIndex:0]>[self.data objectAtIndex:1]){
        NSLog(@"Hello");
    }
    else{
        NSLog(@"Bye");
    }
    printf("\nSorted Array:\n");
    NSLog(@"%@",self.data);
   
}

@end

