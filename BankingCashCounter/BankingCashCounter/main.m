

#import <Foundation/Foundation.h>
#import "Bank.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Bank *bank=[[Bank alloc]init];
        int ch,i;
        int damount,wamount;
        int peoplesize;
        printf("\nEnter numbers of peoples:(max 6)");
        scanf("%d",&peoplesize);
        for (i=0; i<peoplesize; i++) {
            [bank Enqueue:i+1];
        }
        
        do{
        printf("\n-----Welcome to Bank----");
        printf("\n1)Deposit Money\n2)Withdraw Money\n3)Balance Info\n4)Cancel\nEnter Option:");
        scanf("%d",&ch);
        switch (ch) {
            case 1:
                [bank Queue];
                [bank frontItem];
                [bank rearItem];
                if ([bank isEmpty]==1) {
                    printf("\nWarining ! Queue is empty..");
                }
                else{
                    printf("\n*** Welcome to Deposit Operation ***");
                    printf("\nEnter Amount:");
                    scanf("%d",&damount);
                    [bank deposit:damount];
                }
               
                break;
            case 2:
                [bank Queue];
                [bank frontItem];
                [bank rearItem];
                if ([bank isEmpty]==1) {
                    printf("\nWarining ! Queue is empty..");
                }
                else{
                    printf("\n*** Welcome to Withdraw Operation ***");
                    printf("\nEnter Amount:");
                    scanf("%d",&wamount);
                    [bank withdraw:wamount];
                }
              
                break;
            case 3:
                [bank Queue];
                [bank frontItem];
                [bank rearItem];
                if ([bank isEmpty]==1) {
                    printf("\nWarining ! Queue is empty..");
                }
                else{
                     [bank getBalance];
                }
               
                break;
            default:
                printf("\nPlease choose correct option !");
                break;
        }
        }while(ch!=4);
    }
    return 0;
}
