%{
    // Counting for Words and numbers
    int w = 0, n = 0;
%}

word [a-zA-Z]+         
nums [0-9]+     
%%


{word}   { w++; }    
{nums}   { n++; }   
\n {
    printf("Words = %d,\nNumbers: %d\n", w, n);
    w = 0; n = 0;  
}

%%

int yywrap() { return 1; }

int main() { 
    yylex();
    return 0; 
}
