%{
//Construct a Flex program to recognize and print valid email addresses. The domain part should be at least three and at most 5 characters long. The Local part (username before @) should notcontain any special character except and it cannot be at the start or end. The part after should be exactly 3 characters.
        //Sample Input Sample Output 
        //user123@hello.org Valid Email.

        //user@@abc.com Invalid Email!
        //xuser@ab.com Invalid Email!
       
    
%}

%%
[a-zA-Z0-9_]+@([a-z]{3,5})\.([a-z]{3}) {printf("Valid");}
.+  {printf("IValid");}

%%

int yywrap() { return 1;}
int main() {
    yylex();
    return 0;
}