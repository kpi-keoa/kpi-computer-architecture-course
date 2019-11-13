%{
#include <stdio.h>

//extern YYSTYPE yylval;
#include "y.tab.h"
typedef struct _par_ams{
	char* instr;
	char** ops;
	char* label;
	int numops;
	int line;
	int instr_count;
	int labels_count;
}ASMPARAMS;

extern ASMPARAMS* keked;
%}

%%
^[ \t]*[a-zA-Z][a-zA-Z0-9]+:    	memset(keked->label,0,64);strncpy(keked->label,yytext,63);return DECLABEL; 
r[0-9]{1,2}         				strncpy(keked->ops[keked->numops],yytext,63);keked->numops++;return REGISTER; 
[\+\-]?[0-9]+          					strncpy(keked->ops[keked->numops],yytext,63);keked->numops++;return DECNUM; 
[\+\-]?0x[0-9a-fA-F]+   					strncpy(keked->ops[keked->numops],yytext,63);keked->numops++;return HEXNUM; 
^[ \t]*[a-zA-Z]+      				keked->instr_count++; keked->numops=0;memset(keked->ops[0],0,64);memset(keked->ops[1],0,64);memset(keked->ops[2],0,64);memset(keked->instr,0,64); strncpy(keked->instr,yytext,63);return INSTRUCTION;
[a-zA-Z][a-zA-Z0-9]*     			memset(keked->label,0,64);strncpy(keked->label,yytext,63);memset(keked->ops[keked->numops],0,64);strncpy(keked->ops[keked->numops],yytext,63);return LABEL;
,                       			return COMMA;
\[                   				return OPREF ;
\]             						return CLOSEREF ;
(\;.*)?\n							keked->line++;return COMMENT;
[ \t]+                  			;
%%













