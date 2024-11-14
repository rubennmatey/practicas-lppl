package alex;

public class ALexOperations {
  private AnalizadorLexicoTiny alex;
  public ALexOperations(AnalizadorLexicoTiny alex) {
   this.alex = alex;   
  }
   public UnidadLexica unidadEnt() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ENT,alex.lexema()); 
   } 
   public UnidadLexica unidadReal() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.REAL,alex.lexema()); 
   } 

   
   public UnidadLexica unidadId() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.IDEN,
                                          alex.lexema()); 
   }  
   
   public UnidadLexica unidadSuma() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.MAS); 
   } 
   public UnidadLexica unidadResta() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.MENOS); 
   } 
   public UnidadLexica unidadMul() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.POR); 
   } 
   public UnidadLexica unidadDiv() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.DIV); 
   } 
   public UnidadLexica unidadPAp() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.PAP); 
   } 
   public UnidadLexica unidadPCierre() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.PCIERRE); 
   } 
   public UnidadLexica unidadIgual() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.IGUAL); 
   } 
   public UnidadLexica unidadComa() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.COMA); 
   } 
   public UnidadLexica unidadEof() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.EOF); 
   }
   public void error() {
      System.err.println("***"+alex.fila()+", "+alex.columna()+" Caracter inesperado: "+alex.lexema());
   }
   public UnidadLexica unidadBinario() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.BIN,alex.lexema()); 
   }
   public UnidadLexica unidadHexadecimal() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.HEXADEC, alex.lexema()); 
   }
}
