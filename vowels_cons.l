%{
        #include <stdio.h>
        int v=0,c=0;
%}
%option noyywrap
%%
[aeiouAEIOU] {v++;}
[a-z|A-Z] {c++;}
.
%%
int main(){
        printf("enter the text:\n");
        yylex();
        printf("vowels=%d\nconsonants=%d\n",v,c);
        return 0;
}


