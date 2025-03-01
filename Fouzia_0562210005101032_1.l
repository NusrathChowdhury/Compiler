%{
    // Counting for vowels, consonants, and numbers
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
