#import <Foundation/Foundation.h>

@interface CountDown : NSObject
{
    int fhour,fminute,fsecond;
    NSDate *first;
}
-(void)start;
-(void)stop;


@end

@interface StopWatch : NSObject

-(void)starttime;
-(void)stoptime;
-(void)calculatetime;
@end
