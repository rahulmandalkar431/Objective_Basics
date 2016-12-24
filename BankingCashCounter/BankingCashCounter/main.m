

#import <Foundation/Foundation.h>
#import "Bank.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Bank *bank=[[Bank alloc]init];
        [bank Enqueue:3];
        [bank Enqueue:8];
        [bank Enqueue:9];
        [bank Enqueue:2];
        [bank Enqueue:5];
        [bank Enqueue:7];
        [bank Queue];
        printf("\nTotal Item:%d",[bank count]);
        [bank Dequeue];
        [bank Queue];
       
        printf("\nTotal Item:%d",[bank count]);
        [bank Dequeue];
      
        [bank Queue];
        printf("\nTotal Item:%d",[bank count]);
           [bank Enqueue:56];
          [bank Queue];
         [bank Enqueue:33];
                [bank Queue];
          [bank Dequeue];
        [bank Dequeue];
        [bank Dequeue];
        [bank Dequeue];
        [bank Dequeue];
      
       
        [bank Queue];
        [bank frontItem];
        [bank rearItem];
          printf("\nTotal Item:%d",[bank count]);
    }
    return 0;
}
