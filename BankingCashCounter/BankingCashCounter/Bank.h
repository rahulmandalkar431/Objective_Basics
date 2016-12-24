
#import <Foundation/Foundation.h>
#define max 6
@interface Bank : NSObject
{
    int array[max];
    
}
-(void)Enqueue:(int)num;
-(void)Queue;
-(int)Dequeue;
-(int)count;
-(BOOL)isEmpty;
-(int)size;
-(BOOL)isFull;
-(void)rearItem;
-(void)frontItem;
@end
