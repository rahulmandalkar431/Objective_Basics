
#import <Foundation/Foundation.h>
#import "Properties.h"

@implementation Car

@synthesize running=_running;

-(void)startEngine{
    _running=YES;
}
-(void)stopEngine{
    _running=NO;
}

@end
