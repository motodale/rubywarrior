/***********************************************************
* Name of program: shell.c
* Authors: Nigel Ploof
* Description: light shell program
**********************************************************/

/* These are the included libraries.  You may need to add more. */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

/* Put any symbolic constants (defines) here */
#define True 1  /* C has no booleans! */
#define False 0
#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define KBLU  "\x1B[34m"
#define KMAG  "\x1B[35m"
#define KCYN  "\x1B[36m"
#define KWHT  "\x1B[37m"

#define MAX_STR_SIZE 256
/* I don't want to see any global variables in this program. -5 pts
* for any global variable used. */


/* Declarations go here for functions that are called before they
* are defined.  For example, the function named helper is called
* in main before it is defined, so I declare it here. 
*/

//int whateverFuncDeclared(char[]);


/* This is the main function of your project, and it will be run
* first before all other functions.
*/
int main(int argc, char *argv[]){

char input[256];
char *token;
char *tokenArray[256];
int count = 0;
/*if(argc != 2) {
printf("Bad number of arguments.\n");
return -1;
}

*/
while(True){
/*Get user input*/
printf("%sPrompt$ ", KMAG);
memset(input, 0, sizeof(input));
fgets(input, 256, stdin);
/*Do something with input*/
token = strtok(input, " ");
memset(tokenArray, 0, sizeof(tokenArray));
while(token != NULL){
tokenArray[count] = token;
printf("%s\n", tokenArray[count]);
token = strtok(NULL, " ");
count = count + 1;
}
/*Reset the shell*/
/*Exit*/
if (0 == strcmp(input,"exit\n")){
break;
}

}

return 0;
}
