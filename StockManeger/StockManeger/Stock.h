#import <Foundation/Foundation.h>

@interface Stock : NSObject
{   const char *name;
    int arrayofshare[20];
    int arrayofshareprice[20];
    int stockvalue[20];
    NSMutableArray *stockname;
}
-(void)initarray;
-(void)getStockInfo:(NSString *)stock_name numShares:(int)numShare valueShare:(int)sharePrice;
-(void)calculateStock;
-(void)totalStock;
-(void)display;
@end
