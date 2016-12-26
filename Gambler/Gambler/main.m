//
//  main.m
//  Gambler
//
//  Created by BridgeLabz Solutions LLP on 26/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        int stake;
        int trial;
        int goal,i;
        int bet=0,win=0;
        int loss=0;
        printf("\nEnter Stake:");
        scanf("%d",&stake);
        printf("\nEnter Goal:");
        scanf("%d",&goal);
        printf("\nEnter Trial :");
        scanf("%d",&trial);
        for (i=0; i<trial; i++)
        {
            int cash=stake;
            while (cash>0 && cash<goal)
            {
                bet++;
                float random = rand()/(float)RAND_MAX;
              
                    if (random<0.5)
                    {
                        cash++;
                    }
                    else
                    {
                    cash--;
                    }
            }
            if (cash==goal)
            {
                win++;
            }
            else{
              loss++;
            }
        }
        printf("\nNumber of times Wins %d out of %d",win,trial);
        printf("\nNumber of times Bets:%d",bet);
        float per=100*(win/trial);
        printf("\nPercentage of Win:%f ",per);
    }
    return 0;
}
