
#import <Foundation/Foundation.h>
#import "stopwatch.h"

@implementation CountDown

int count=0;
-(void)start{
      first=[[NSDate alloc]init];
    NSDate *c_date1=[NSDate date];
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"hh:mm:ss"];
    NSString *formated=[format stringFromDate:c_date1];
    //NSDate *firs=[format stringFromDate:c_date];
    int hour=[[formated substringToIndex:2]intValue];
    int minute=[[formated substringWithRange:NSMakeRange(3, 4)]intValue];
    int second=[[formated substringFromIndex:6]intValue];
    if(count==0){
      
        first=c_date1;
        fhour=hour;
        fminute=minute;
        fsecond=second;
        
    }
    count++;
    printf("\n%d:%d:%d\twith count:%d",hour,minute,second,count);
   

}
-(void)stop{
    NSDate *cd=[NSDate date];
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"hh:mm:ss"];
    
   double d =[cd timeIntervalSinceDate:first];
   // NSString *formated=[format stringFromDate:diff];
    
    //int hour=[[formated substringToIndex:2]intValue];
   // int minute=[[formated substringWithRange:NSMakeRange(3, 4)]intValue];
   // int second=[[formated substringFromIndex:6]intValue];
    printf("\nTotal time elapsed:\t%f ",d*3600);
    
}

@end

@implementation StopWatch
double starttime;
double stoptime;
double elapsetime;
bool running=false;
-(void)starttime{
    NSTimeInterval timeinsec=[[NSDate date] timeIntervalSince1970];
    starttime=timeinsec;
    running=true;
}

-(void)stoptime{
   NSTimeInterval timeinsec2=[[NSDate date] timeIntervalSince1970];
    stoptime=timeinsec2;
    running=false;
}
-(void)calculatetime{
    if(running==false){
        elapsetime=stoptime-starttime;
        int sec=elapsetime;
        if(sec<=60){
            printf("\nTime Elapsed: %d second..\n",sec);
        }
        else if (sec>60){
            int min=(sec/60);
            int a=min*60;
            int b=sec-a;
            printf("\nTime Elapsed: %d minute and %d second..\n",min,b);
        }
        
    }
    
    
    
}

@end
