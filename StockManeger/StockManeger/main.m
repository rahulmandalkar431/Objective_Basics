#import <Foundation/Foundation.h>
#import "Stock.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stock *stock=[[Stock alloc]init];
        [stock initarray];
        int num_stock,i;
        char stock_name[20];
        int numofshare;
        int shareval;
        printf("\nEnter number of stocks:\n");
        scanf("%d",&num_stock);
        for (i=0; i<num_stock; i++)
        {
            printf("\nStock No:%d\n",i+1);
            printf("\nEnter stock name:");
            scanf("%s",stock_name);
            printf("\nEnter number of shares for this stock:");
            scanf("%d",&numofshare);
            printf("\nEnter price of share for this stock:");
            scanf("%d",&shareval);
            NSString *nameofshare=[NSString stringWithFormat:@"%s",stock_name];
            [stock getStockInfo:nameofshare numShares:numofshare valueShare:shareval];
        }
        [stock calculateStock];
        [stock totalStock];
        [stock display];
    }
    return 0;
}
