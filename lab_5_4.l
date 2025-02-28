
%{
    //start with '_' and end with a '_'  AND AT least two alphabet and atmost 4
   // dot(.) makes all sting in one string

%}

alp [a-zA-Z]

%%
_.+{2,4}_ {printf("valid input: %s",yytext);}
end {return 0;} 
.+ {printf("Invalid input: %s",yytext);} 
%%  
     
int yywrap(){return 1;}
int main(){yylex(); return 0;}