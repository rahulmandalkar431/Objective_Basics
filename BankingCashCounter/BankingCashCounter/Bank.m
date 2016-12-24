
#import <Foundation/Foundation.h>
#import "Bank.h"

@implementation Bank
int front=0;
int rear=-1;
int itemCount=0;
-(void)Enqueue:(int)num{
    if ([self isFull]) {
        printf("\nQueue is overflow...!");
    }
    else{
        rear=rear+1;
        array[rear]=num;
        printf("\nItem %d inserted succesfully..",num);
        itemCount++;
    }
}
-(void)Queue{
    int i;
    printf("\nElements are:");
    for (i=front; i<=rear; i++) {
        printf("%d\t",array[i]);
    }
    printf("\n");
}
-(int)Dequeue{
    if ([self isEmpty]) {
        printf("\nQueue is underflow..!");
    }
    else{
        front=front+1;
        itemCount--;
       // printf("\nItem %d is deleted..",array[front]);
    }
    return array[front];
}

-(BOOL)isEmpty{
    if (rear==0) {
        return 1;
    }
    return 0;
}
-(int)size{
    return max;
}
-(BOOL)isFull{
    if (itemCount==max) {
        return 1;
    }
    return 0;
}
-(int)count{
    return itemCount;
}
-(void)rearItem{
    printf("\nFront:%d",array[front]);
}
-(void)frontItem{
    printf("\nRear:%d",array[rear]);
}
@end
