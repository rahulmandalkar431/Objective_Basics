//
//  main.m
//  Tic-Tac-Toe
//
//  Created by BridgeLabz Solutions LLP on 28/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        int player = 0;
        int winner= 0;
        int ch= 0;
        int row = 0;
        int column = 0;
        int line = 0;
        // initialise board
        char board [3][3] =
        {
            
            {'1','2','3'},
            
            {'4','5','6'},
            
            {'7','8','9'}
            
        };
  
        
        for (int i = 0; i<9 && winner==0; i++)
            
        {
            
            printf("\n\n");
            
            printf(" %c | %c | %c\n", board[0][0], board[0][1], board[0][2]);
            
            printf("---|---|---\n");
            
            printf(" %c | %c | %c\n", board[1][0], board[1][1], board[1][2]);
            
            printf("---|---|---\n");
            
            printf(" %c | %c | %c\n", board[2][0], board[2][1], board[2][2]);
            
            
            
            player = i%2 + 1;
            
            
            
            do
                
            {
                
                printf("\nPlayer %d, please enter the number of the square "
                       
                       "where you want to place your %c: ",
                       
                       player,(player==1)?'X':'O'); //if current player 1 then put x else O for player 2
                
                scanf("%d", &ch);
                ch--; //to get array location
                
                row = ch/3;
                column = ch%3;
                
            }while(ch<0 || ch>9 || board [row][column]>'9');
            
            
            
            board[row][column] = (player == 1) ? 'X' : 'O';//if current player 1 then put x else O for player 2 in board
 
            
            if((board[0][0]==board[1][1] && board[0][0]==board[2][2]) ||
               
               (board[0][2]==board[1][1] && board[0][2]==board[2][0]))
            {
                winner = player;
            }
            
            else{
                
                for(line = 0; line <=2; line++)
                    
                    if((board[line][0]==board[line][1] && board[line][0]==board[line][2])||
                       
                       (board[0][line]==board[1][line] && board[0][line]==board[2][line]))
                        
                        winner = player;
            
            }
            
            
        }
        
        
        
        printf("\n\n");
        
        printf(" %c | %c | %c\n", board[0][0], board[0][1], board[0][2]);
        
        printf("---|---|---\n");
        
        printf(" %c | %c | %c\n", board[1][0], board[1][1], board[1][2]);
        
        printf("---|---|---\n");
        
        printf(" %c | %c | %c\n", board[2][0], board[2][1], board[2][2]);
        
        if(winner==0)
        {
            printf("\nSorry ! Game is a Draw\n");
        }
        else
        {
            printf("\nCongratulation !! Player %d has won\n", winner);
        }

        
        
    }
    return 0;
}
