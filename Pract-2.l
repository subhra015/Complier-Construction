%{
// NAME : Subhrajeet Ganguly PRN: 24070521201
#include<stdio.h>
int comments = 0, keywords = 0, identifiers = 0, words = 0, lines = 0, spaces = 0;
%}
%%
"/*" ( - [\n)*"*/"
[ \t]+
\n
{ comments++; }
{ spaces += yyleng; }
{ lines++; }
"int"|"char"|"float"|"double"|"main"|"if"|"else"|"for" | "while" | "pointer" { keywords++; }
[^\t\n\a-aZ-Z0-9_]+
[a-zA-Z_][a-zA-Z0-9_]*
{ words++; }
{ identifiers++; }
{ /* ignore other characters */ }
%%
int main()
{
yylex();
}
printf("Comments: %d\n", comments);
printf("Spaces: %d\n", spaces);
printf("Lines: %d\n", lines);
printf("Keywords: %d\n", keywords);
printf("Identifiers: %d\n", identifiers);
printf("Words: %d\n", words);
return 0;
int yywrap()
{
return 1;
}
