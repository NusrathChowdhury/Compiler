%{
    // Counting for vowels, consonants, and numbers
    //Test Input 1:
    //Cat_pq_Dog
    //Somewhere_in_the_PQ
    //Somewhere_in_the_pQ
    //end
    //Test Output 1:
    //Valid
    //Valid
    //Invalid
    // + individual digit ke 1ta hisabe nibe   


    int v = 0, c = 0, n = 0;
%}

vowels [aeiouAEIOU]    
alp [a-zA-Z]           
nums [0-9]+     
%%
{vowels} { v++; }   
{alp}    { c++; }   
{nums}   { n++; }   
\n {
    printf("Vowels = %d, \nConsonants: %d,\nNumbers: %d\n", v, c, n);
    v = 0; c = 0; n = 0;
}
end { return 0; }   
%%

int yywrap() {return 1;}
int main() {yylex();return 0;}
