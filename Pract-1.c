
%{
#include<stdio.h>
%}
%% 
one|ONE   printf("1");
two|TWO   printf("2");
three|THREE printf("3");
four|FOUR   printf("4");
five|FIVE   printf("5");
six|SIX	    printf("6");

%% 
int main ()
{
	yylex();
	return 0;
}
