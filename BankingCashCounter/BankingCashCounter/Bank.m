
#import <Foundation/Foundation.h>
#import "Bank.h"

@implementation Bank
int wfront=0;
int wrear=-1;
int wcount=0;
int balance=50000;
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
    printf("\n--------------------------------------");
    printf("\nQueue :");
    for (i=front; i<=rear; i++) {
        printf("%d\t",array[i]);
    }
    printf("\n--------------------------------------");
    printf("\nWaiting Queue :");
    for (i=wfront; i<=wrear; i++) {
        printf("%d\t",waiting[i]);
    }
    printf("\n--------------------------------------");
    
}
-(int)Dequeue{
    if ([self isEmpty]) {
        printf("\nQueue is underflow..!");
    }
    else{
        front=front+1;
        if(itemCount<=0){
            printf("\nQueue is underflow..!");
        }
        else{
            itemCount--;
        }
        
       // printf("\nItem %d is deleted..",array[front]);
    }
    return array[front];
}

-(BOOL)isEmpty{
    if (itemCount==0) {
        return 1;
    }
    else{
        return 0;
    }
  
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
-(void)deposit:(int)damount{
    
        balance=balance+damount;
        printf("\nCash has been deposited by succesfully..");
        int current_fp=[self Dequeue];
        [self getBalance];
    
   
}
-(void)getBalance{
    printf("\nAvailable Balance:%d",balance);
   
    
}
-(void)withdraw:(int)wamount{
    if(wamount>balance){
        printf("\nSorry ! Currently cash is not availabe..!");
        int fp=[self getFront];
        
        wrear=wrear+1;
        waitcash[wrear]=wamount;
        waiting[wrear]=fp;
        wcount++;
        printf("\nPeople with ID %d is in Waiting..",fp);
        
        int current_fp=[self Dequeue];
        printf("\nCurrent people with ID is %d ..\n",current_fp);
    }
    else
    {
        if (wcount>0 && balance>=waitcash[wfront])
        {
            printf("\nWaiting people with id %d is ready for withdraw..",waiting[wfront]);
            
            balance=balance-wamount;
            printf("\nCash of %d has been withdrawed by %d successfully.. ",wamount,waiting[wfront]);
            wfront++;
            wcount--;
        }
        else
        {
        balance=balance-wamount;
        printf("\nCash of %d has been withdrawed successfully.. ",wamount);
        int current_fp=[self Dequeue];
        }
        
         printf("\n-------****** Thanks You ******-------\n");
    }
    [self getBalance];
    
}
-(int)getFront{
    return array[front];
}
@end
