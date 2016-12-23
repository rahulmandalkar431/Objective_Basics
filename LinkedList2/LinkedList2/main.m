
#import <Foundation/Foundation.h>
#import "Node.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Node *node=[[Node alloc]init];
        NSMutableArray *readFile =[node readFromFile];
        int i;
        for (i=0; i<[readFile count]-1; i++) {
        
            int num=[[readFile objectAtIndex:i]intValue];
         
            [node insert:num];
        }
    [node print];
        int key;
        printf("\nEnter number to search:\n");
        scanf("%d",&key);
        NSInteger key1=(NSInteger)key;
        
        [node search:key1];
        NSLog(@"Updated List:\n");
        [node print];
      
    }
    return 0;
}
