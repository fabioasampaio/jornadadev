// Meu terceiro programa em Harbour 
REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT
FUNCTION Main()
    
    LOCAL cAssunto := "  FICHA DE APRESENTA€ÇO"        // DECLARA€ÇO DE VARIµ½VEL
    LOCAL cNome := "F bio Sampaio"                     // DECLARA€ÇO DE VARIµ½VEL
    LOCAL cCidade := "Sorocaba - SP"                   // DECLARA€ÇO DE VARIµ½VEL
    LOCAL cCurso := "Harbour / ADVPL"                  // DECLARA€ÇO DE VARIµ½VEL
    
    hb_cdpSelect( "PT850" ) 
    hb_langSelect( "PT" )
    
    QOut("=========================")      
    QOut(cAssunto)      
    QOut("=========================")          
    QOut("Nome: " + cNome)      // usa a variavel
    QOut("Cidade: " + cCidade)   // usa a variavel
    QOut("Curso: " + cCurso)     // usa a variavel
    QOut("========================")          
RETURN NIL