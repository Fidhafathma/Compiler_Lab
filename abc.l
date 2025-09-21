%{
        #include <stdio.h>
%}
%option noyywrap
%%
"abc" {strcpy(yytext,"ABC");ECHO;}
%%
int main(){
printf("Enter the string\n");
yylex();
return 0;
}
