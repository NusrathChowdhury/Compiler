%{
    #include <stdio.h>
        //Capital/small/Number from a character

%}

cap    [A-Z]  
sml    [a-z]
num    [0-9]

%%

{cap}|{sml} {printf("Alphabet: %s\n", yytext);}
{num} {printf("Number: %s\n", yytext);}
.+    {printf("Invalid Output: %s\n", yytext);}

%%



int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
