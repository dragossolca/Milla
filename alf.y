%left '=='
%left '+' '-'
%left '*' '/' 

%%

start: statements                           {}
;

statements: statement NEWLINE statements	{}
            | statement NEWLINE				{}
            | statement						{}
;

statement: expression
            | declaration
            | assign
            | function
            | daca                          
            | repeta                        
            | pentru                        
;

expression: expression '+' expression          {}
            | expression '-' expression        {}
            | expression '/' expression        {}
            | expression '*' expression        {}
            | expression '==' expression       {}
            | NUMAR                            {}
            | CUVANT                           {}
;

declaration: OBIECT CUVANT      {}
;

assign: CUVANT '=' expression                  {}
;

function: CUVANT MERGE NUMAR                   
        | CUVANT SARE NUMAR                    
        | CUVANT ROSTOGOL NUMAR                
        | CUVANT SPUNE PROPOZITIE              
        | NUMAR LA NUMAR                       
        | RAD NUMAR
        | ROT NUMAR
        | SIN NUMAR
        | COS NUMAR
        | TAN NUMAR
        | COT NUMAR
;

daca: DACA expression ATUNCI statement endDaca     {}
;

endDaca: NEWLINE                                {}
        | ALTFEL statement                      {}
;

repeta: REPETA expression statement            {}
;

pentru: PENTRU CUVANT DIN NUMAR LA NUMAR statement       {}
;