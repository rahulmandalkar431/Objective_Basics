#import <Foundation/Foundation.h>
#define max 6
@interface Job : NSObject
{
    char job[max];
    int  profit[max];
    int deadline[max];
    int m;
    
}
-(void)readFromFile;
-(void)Schedule;

@end
