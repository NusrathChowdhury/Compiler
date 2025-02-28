
%{
    //start with '_' and end with a '_'  AND AT least one alphabet
   
%}

alp [a-zA-Z]

%%
_{alp}+_ {printf("valid input: %s",yytext);}
end {return 0;} 
.+ {printf("Invalid input: %s",yytext);} 
// dot(.) makes all sting in one string
%%  
     
int yywrap(){return 1;}
int main(){yylex(); return 0;}