
#import <Foundation/Foundation.h>
#import "Node.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Node *node=[[Node alloc]init];
        NSMutableArray *readFile =[node readFromFile];
        int i;
        NSString *word;
        char str[20];
        for (i=0; i<[readFile count]-1; i++) {
            
         
            
            [node insert:[readFile objectAtIndex:i]];
        }
        [node print];
        do
        {
           printf("\nEnter word to search:\n");
           scanf("%s",str);
           word=[NSString stringWithFormat:@"%s",str];
           [node search:word];
           printf("\nList After Updation:\n");
           [node print];
            
        }while(![word isEqualToString:@"exit"]);
        NSArray *ar=@[@"rahul",@"mandalkar"];
        bool var=[ar writeToFile:@"Users/bridgelabz/Documents/Objective_Basics/LinkedListWord/LinkedListWord/output" atomically:YES];
        if(var){
            NSLog(@"Succesfully writing done..");
        }
        else{
            NSLog(@"UnSuccesfull writing done..");

        }
       
    }
    return 0;
}
