
%{
    // Write a Flex program that accepts any string that has '^' at the beginning and end, and in between those '^', the string should be 2-part and separated by a '-'. [Use "end" as the terminating command, and it will not be counted]



%}

alp [a-zA-Z0-9_]+

%%
\^({alp})-({alp})\^  {printf("valid input: %s",yytext);}
end { return 0; } 
. {printf("Invalid input: %s",yytext);} 
%%  
     
int yywrap(){return 1;}
int main(){yylex(); return 0;}