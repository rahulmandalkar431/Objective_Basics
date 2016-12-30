//
//  JobOvershoot.m
//  JobScheduling
//
//  Created by BridgeLabz Solutions LLP on 30/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JobOvershoot.h"

#define maxi 5
@implementation Job1
int numofprocces;
int larg;
int location=0,prevfin=0;
NSMutableArray *usd;

-(void)readFromFile
{   int j=0;
    NSError *error;
    NSString *string=[NSString stringWithContentsOfFile:@"/Users/bridgelabz/Documents/Objective_Basics/JobScheduling/JobScheduling/data.txt" encoding:NSUTF8StringEncoding error:&error];
    NSArray *dict=[string componentsSeparatedByString:@"\n"];
    numofprocces=[[dict objectAtIndex:0]intValue];
   
  //----------------------------------------
    
    
    for (int i=1; i<dict.count-1; i++)
    {
        if(j<5)
        {
        NSString *obj=[dict objectAtIndex:i];
        NSArray *array=[obj componentsSeparatedByString:@","];
        
        D[j]=(int)[array[0]intValue];
        M[j]=[array[1]intValue];
          
        }
        j++;
    }
   
};

-(void)schedule
{
    T[0]=2;    // D[0]=1;      M[0]=1;
    T[1]=1;    // D[1]=2;      M[1]=2;
    T[2]=5;    // D[2]=2;      M[2]=1;
    T[3]=3;    // D[3]=4;      M[3]=3;
    T[4]=4;    // D[4]=10;     M[4]=1;
    printf("\nTask_Sequence\t Deadline\t\tMinute");
    printf("\n-------------------------------------");
    for (int i=0; i<maxi; i++) {
        printf("\n\t%d\t\t\t%d\t\t%d",T[i],D[i],M[i]);
    }
    printf("\n-------------------------------------");
    printf("\nTotal Task:%d",numofprocces);
    printf("\n-------------------------------------");
    
    for (int i=0; i<maxi; i++)
    {
        start[i]=prevfin;
        finish[i]=start[i]+M[i];
        late[i]=finish[i]-D[i];
        prevfin=finish[i];
    }
    
    /*
     //------------Task 2---------------------------
     start[0]=0;  // start time of first is zero
     finish[0]=start[0]+M[0];
     late[0]=finish[0]-D[0];
     //------------Task 1---------------------------
     start[1]=finish[0];
     finish[1]=start[1]+M[1];
     late[1]=finish[1]-D[1];
     //------------Task 5---------------------------
     start[2]=finish[1];
     finish[2]=start[2]+M[2];
     late[2]=finish[2]-D[2];
     
     //------------Task 3---------------------------
     start[3]=finish[2];
     finish[3]=start[3]+M[3];
     late[3]=finish[3]-D[3];
     //------------Task 4---------------------------
     start[4]=finish[3];
     finish[4]=start[4]+M[4];
     late[4]=finish[4]-D[4];
     //---------------------------------------------*/
    
    //--------------------------------------------
    

    larg=late[0];
    for (int i=1; i<maxi; i++)
    {
        if(larg<late[i])
        {
            larg=late[i];
            location=i;
        }
    }
    
};

-(void)display
{
    printf("\nResult:\n-------------------------------------");
    printf("\nTask \t\t\tOvershootTime");
    printf("\n-------------------------------------");
    for (int i=0; i<maxi; i++) {
        printf("\n\t%d\t\t\t%d",T[i],late[i]);
    }
    printf("\n-------------------------------------");
    printf("\nMaximum Overshoot time is %d for Task %d",larg,T[location]);
    printf("\n-------------------------------------\n\n");
    

    
};


@end
