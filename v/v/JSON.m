//
//  JSON.m
//  v
//
//  Created by BridgeLabz Solutions LLP on 25/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSON.h"
//   /Users/bridgelabz/Documents/Objective_Basics/myjsonfile.json
//   /Users/bridgelabz/Documents/Objective_Basics/v/v/myinventory.json
@implementation JSON

-(void)getData{
   
    NSData *jsonData2=[NSData dataWithContentsOfFile:@"/Users/bridgelabz/Documents/Objective_Basics/v/v/myinventory.json"];
    
    id jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonData2 options:NSJSONReadingMutableContainers error:nil];
    someDictionary = (NSDictionary*)jsonObjects;
   
//----------------------------------------------------------------------------------
    
  rice = someDictionary[@"Rice"];
  pulse = someDictionary[@"Pulses"];
  wheat = someDictionary[@"Wheat"];
    
}

-(int)calculateRice{
    NSString *ricename[[rice count]];
    int i=0;
    int totalricevalue=0;
    int valueforeachrice[[rice count]];
    for (NSDictionary *ricedata in rice) {
        valueforeachrice[i]=[[ricedata objectForKey:@"Weight"]intValue]*[[ricedata objectForKey:@"Price"]intValue];
        ricename[i]=[ricedata objectForKey:@"Name"];
        i++;
    }
    for (i=0; i<[rice count]; i++)
    {
        totalricevalue=totalricevalue+valueforeachrice[i];
    }
    printf("\n*************Rice***************\n");
    for (i=0; i<[rice count]; i++) {
         NSLog(@"Name:%@\tValue:%d",ricename[i],valueforeachrice[i]);
    }
   
    printf("\nTotal Rice Item:%d",i);
    printf("\nTotal Rice Value in Inventory:%d",totalricevalue);
    //-------------------------write to file ---------
       outputrice=@{
           @"Rice": @[
                        @{
                          @"Total-Rice-Item":[NSString stringWithFormat:@"%d",i] ,
                          @"Total-Rice-Value":[NSString stringWithFormat:@"%d",totalricevalue] }
                                
                     ]
                   };
    
    //-------------------------end -------------------
    return totalricevalue;
}
-(int)calculatePulse{
    NSString *pulsename[[pulse count]];
    int i=0;
    int totalpulsevalue=0;
    int valueforeachpulse[[pulse count]];
    for (NSDictionary *ricedata in pulse) {
        valueforeachpulse[i]=[[ricedata objectForKey:@"Weight"]intValue]*[[ricedata objectForKey:@"Price"]intValue];
         pulsename[i]=[ricedata objectForKey:@"Name"];
        i++;
    }
    for (i=0; i<[pulse count]; i++)
    {
        totalpulsevalue=totalpulsevalue+valueforeachpulse[i];
    }
    printf("\n************* Pulses ***************\n");
    for (i=0; i<[pulse count]; i++) {
        NSLog(@"Name:%@\tValue:%d",pulsename[i],valueforeachpulse[i]);
    }
    printf("\nTotal Pulse Item:%d",i);
    printf("\nTotal Pulse Value in Inventory:%d",totalpulsevalue);
    //-------------------------write to file ---------
    outputpulse=@{
                 @"Pulse": @[
                         @{
                             @"Total-Pulse-Item":[NSString stringWithFormat:@"%d",i] ,
                             @"Total-Pulse-Value":[NSString stringWithFormat:@"%d",totalpulsevalue]
                          }
                         
                         ]
                 };
    
    
    //-------------------------end -------------------
    return totalpulsevalue;
    
}
-(int)calculateWheat{
    NSString *wheatname[[wheat count]];
    int i=0;
    int totalwheatvalue=0;
    int valueforeachwheat[[wheat count]];
    for (NSDictionary *ricedata in wheat) {
        valueforeachwheat[i]=[[ricedata objectForKey:@"Weight"]intValue]*[[ricedata objectForKey:@"Price"]intValue];
        wheatname[i]=[ricedata objectForKey:@"Name"];
        i++;
    }
    for (i=0; i<[wheat count]; i++)
    {
        totalwheatvalue=totalwheatvalue+valueforeachwheat[i];
    }
    printf("\n*************Wheat***************\n");
    for (i=0; i<[wheat count]; i++) {
        NSLog(@"Name:%@\tValue:%d",wheatname[i],valueforeachwheat[i]);
    }
    printf("\nTotal Wheat Item:%d",i);
    printf("\nTotal Wheat Value in Inventory:%d",totalwheatvalue);
    //-------------------------write to file ---------
    outputwheat=@{
                 @"Wheat": @[
                         @{
                             @"Total-Wheat-Item":[NSString stringWithFormat:@"%d",i] ,
                             @"Total-Wheat-Value":[NSString stringWithFormat:@"%d",totalwheatvalue]
                          }
                         
                         ]
                 };
    
    
    //-------------------------end -------------------
    return totalwheatvalue;
    
}

-(void)writetojson{
    NSArray *finalarray=[[NSArray alloc]initWithObjects:outputrice,outputpulse,outputwheat, nil];
    
    NSData *data1 = [NSJSONSerialization dataWithJSONObject:finalarray options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:data1
                                              encoding:NSUTF8StringEncoding];
    [jsonStr writeToFile:@"/Users/bridgelabz/Documents/Objective_Basics/v/v/myoutput.json" atomically:YES encoding:NSUTF8StringEncoding error:nil];
}


@end
