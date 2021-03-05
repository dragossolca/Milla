Ws                    [ \t]
Numar                 \-?[0-9]+["."[0-9]+]?
Propozitie            \"[^\"]*\"
Cuvant                [A-Za-z][A-Za-z0-9\_]*
Newline               \r?\n
Comentariu            \![^!]*\!

%%

"=="                  { return '=='; }
"="				      { return '='; }
"-"                   { return '-'; }
"+"                   { return '+'; }
"*"                   { return '*'; }
"/"                   { return '/'; }
"sin"                 { return 'SIN'; }
"cos"                 { return 'COS'; }
"tan"                 { return 'TAN'; }
"cot"                 { return 'COT'; }
"DACA"                { return 'DACA'; }
"ATUNCI"              { return 'ATUNCI'; }
"ALTFEL"              { return 'ALTFEL'; }
"REPETA"              { return 'REPETA'; }
"PENTRU"              { return 'PENTRU'; }
"DIN"                 { return 'DIN'; }
"LA"                  { return 'LA'; }
"MERGE"               { return 'MERGE'; }
"SARE"                { return 'SARE'; }
"ROSTOGOL"            { return 'ROSTOGOL'; }
"SPUNE"               { return 'SPUNE'; }
"OBIECT"              { return 'OBIECT'; }
"RAD"                 { return 'RAD'; }
"ROT"                 { return 'ROT'; }

{Ws}                { /*skip whitespace*/ }
{Newline}           { return 'NEWLINE'; }
{Propozitie}        { return 'PROPOZITIE'; }
{Numar}             { return 'NUMAR'; }
{Cuvant}            { return 'CUVANT'; }
{Comentariu}        { }