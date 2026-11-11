%{

//Name: Subhrajeet Ganguly PRN:24070521201
#include <stdio.h>
int count = 0;
%}

%%

[Aa][a-zA-Z]* {count++;}
[a-zA-Z]+       {/* do nothing */}
[ \t\n]+ {/*Ignore all other newlines and characters*/}
. {/*do nothing*/}

%%

int yywrap(){
return 1;
}


int main() {
printf("Enter a string:");
yylex();
printf("Number of words starting with a: %d\n", count);
return 0;
}
