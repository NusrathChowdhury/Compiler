%{
    //Construct a Flex program to count the number of characters (alphabets, numbers and symbols)
    //separately. The program should accept multiple line of inputs and terminate on the "exit
    //  keywords
         //input :hello, world! 123
        //testing @#$
        //end
        // Alphabet :17
        //Digit: 3
            //Special char : 5

    int a = 0,d= 0, s= 0;
    
%}

%%



end { printf("Alphabet :%d\n Digit: %d\n Special char : %d\n", a,d,s); return 0; }
[a-zA-z] {a++;}
[0-9] { d++; }
[^a-zA-Z0-9 \t\n] { s++; }


%%

int yywrap() { return 1;}
int main() {
    yylex();
    return 0;
}