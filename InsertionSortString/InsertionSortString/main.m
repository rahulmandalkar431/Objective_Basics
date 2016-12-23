
#import <Foundation/Foundation.h>
#import "Header.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InsertionSort *ins=[[InsertionSort alloc]init];
        NSMutableArray *marray = [[NSMutableArray alloc]init];
        NSString *string;
        char str[20];
        do{
          printf("\nEnter string:\n");
          scanf("%s",str);
          string=[NSString stringWithFormat:@"%s",str];
          [marray addObject:string];
           /* int i;
            
            */
            
            
            
          [ins getString:marray];
        }while(![string isEqualToString:@"exit"]);
      //  [ins insertion_sort];
        
    }
    return 0;
}
