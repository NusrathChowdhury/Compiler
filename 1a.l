%{
    //Construct a valid token for the language, L that accepts strings of lowercase letters joined with underscores and at most one upper case letter.
        //Sample Input Sample Output 
        //abcde Not matched
        //abUcded Found a match
        //xyler_xyzer Found a match
        //awertly Not matched
    
%}

%%
_[a-z_]*[A-Z]{0,1}[a-z_]*_  {printf("Valid");}
.+  {printf("IValid");}

%%

int yywrap() { return 1;}
int main() {
    yylex();
    return 0;
}