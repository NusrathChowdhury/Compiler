
%{
    #include <stdio.h>
    //Capital or small from a string
%}

cap    [A-Z]  
sml    [a-z]

%%

{cap} {printf("Capital: %s\n", yytext);}
{sml} {printf("Small: %s\n", yytext);}
.    {printf("Invalid Output: %s\n", yytext);}

%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}




