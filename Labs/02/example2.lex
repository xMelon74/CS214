%{
#include <stdio.h>
%}

%%
[0123456789]+           printf("NUMBER\n");
[a-zA-Z_][a-zA-Z_0-9]*   printf("WORD\n");
%%