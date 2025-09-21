%{
        int lines=0,words=0,chars=0;
%}

%option noyywrap

%%
[a-zA-Z]+ {words++;chars+=yyleng;}
\n {lines++;chars++;}
. {chars++;}
%%
int main(int argc,char **argv)
{
yyin=fopen(argv[1],"r");
yylex();
printf("lines=%d\n words=%d\n characters=%d\n",lines,words,chars);
fclose(yyin);
}
