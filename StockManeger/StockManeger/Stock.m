#import <Foundation/Foundation.h>
#import "Stock.h"

@implementation Stock

int count=0;
int totalstock=0;

-(void)initarray{
    stockname=[[NSMutableArray alloc]init];
}

-(void)getStockInfo:(NSString *)stock_name numShares:(int)numShare valueShare:(int)sharePrice
{
    
    [stockname addObject:stock_name];
    arrayofshare[count]=numShare;
    arrayofshareprice[count]=sharePrice;
    count++;
}
//**********************************************
-(void)calculateStock{
    int i;
    for (i=0; i<count; i++) {
        stockvalue[i]=arrayofshare[i]*arrayofshareprice[i];
    }
    
}
//**********************************************
-(void)totalStock{
    int i;
    for (i=0; i<count; i++) {
        totalstock=totalstock+stockvalue[i];
    }
}
-(void)display{
    int i;
    printf("\n********************* Stock Report *****************************");
    printf("\n|Sr No.|\t StockName|\t Shares|\t SharePrice|\t ShareValue|");
    printf("\n----------------------------------------------------------------");
    //printf("\nCount:%d",count);
    NSString *str;
    for(i=0; i<count; i++) {
        str=[stockname objectAtIndex:i];
        name=[str UTF8String];
        printf("\n|\t%d\t%s\t\t\t%d\t\t\t%d\t\t\t%d|",i+1,name,arrayofshare[i],arrayofshareprice[i],stockvalue[i]);
    }
    printf("\n----------------------------------------------------------------");
    printf("\nTotal Stock:%d\t\t\tTotal Stock Value:%d",count,totalstock);
    printf("\n----------------------------------------------------------------\n");
    
}

@end
