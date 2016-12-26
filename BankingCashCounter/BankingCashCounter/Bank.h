
#import <Foundation/Foundation.h>
#define max 6
@interface Bank : NSObject
{   int maxvalue;
    int array[max];
    int waitcash[max];
    int waiting[max];
 
}
-(int)getFront;
-(void)Enqueue:(int)num;
-(void)Queue;
-(int)Dequeue;
-(int)count;
-(BOOL)isEmpty;
-(int)size;
-(BOOL)isFull;
-(void)rearItem;
-(void)frontItem;
-(void)deposit:(int)damount;
-(void)withdraw:(int)damount;
-(void)getBalance;
@end
