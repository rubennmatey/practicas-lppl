package alex;

import asint.ClaseLexica;

public class ALexOperations {
   private AnalizadorLexicoTiny alex;
   public ALexOperations(AnalizadorLexicoTiny alex) {
      this.alex = alex;   
   }

   public UnidadLexica unidadId() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.IDEN,alex.lexema()); 
   }  
   public UnidadLexica unidadEnt() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ENT,alex.lexema()); 
   } 
   public UnidadLexica unidadReal() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.REAL ,alex.lexema()); 
   } 
   public UnidadLexica unidadChar() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.CHAR,alex.lexema()); 
   } 
   public UnidadLexica unidadStr() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.STR,alex.lexema()); 
   } 
   public UnidadLexica unidadBool() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.BOOL,alex.lexema()); 
   } 
   public UnidadLexica unidadÑint() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑINT,alex.lexema()); 
   } 
   public UnidadLexica unidadÑouble() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑOUBLE,alex.lexema()); 
   } 
   public UnidadLexica unidadÑhar() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑHAR,alex.lexema()); 
   } 
   public UnidadLexica unidadÑtring() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑTRING,alex.lexema()); 
   } 
   public UnidadLexica unidadÑoolean() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑOOLEAN,alex.lexema()); 
   } 
   public UnidadLexica unidadÑif() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑIF,alex.lexema()); 
   } 
   public UnidadLexica unidadÑelsif() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑELSIF,alex.lexema()); 
   } 
   public UnidadLexica unidadÑelse() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑELSE,alex.lexema()); 
   } 
   public UnidadLexica unidadÑor() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑOR,alex.lexema()); 
   } 
   public UnidadLexica unidadÑhile() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑHILE,alex.lexema()); 
   } 
   public UnidadLexica unidadÑo() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑO,alex.lexema()); 
   } 
   public UnidadLexica unidadÑun() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑUN,alex.lexema()); 
   } 
   public UnidadLexica unidadÑoid() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑOID,alex.lexema()); 
   } 
   public UnidadLexica unidadÑeturn() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑETURN,alex.lexema()); 
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
   public UnidadLexica unidadMenor() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.MEN,alex.lexema()); 
   } 
   public UnidadLexica unidadMayor() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.MAY,alex.lexema()); 
   } 
   public UnidadLexica unidadMenorIgual() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.MENI,alex.lexema()); 
   } 
   public UnidadLexica unidadMayorIgual() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.MAYI,alex.lexema()); 
   } 
   public UnidadLexica unidadPAp() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.PAP); 
   } 
   public UnidadLexica unidadPCierre() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.PCIERRE); 
   } 
   public UnidadLexica unidadTam() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.TAM); 
   } 
   public UnidadLexica unidadIAp() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.IAP); 
   } 
   public UnidadLexica unidadICierre() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ICIERRE); 
   } 
   public UnidadLexica unidadIgual() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.IGUAL,alex.lexema()); 
   }
   public UnidadLexica unidadLLAp() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.LLAP); 
   } 
   public UnidadLexica unidadLLCierre() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.LLCIERRE); 
   } 
   public UnidadLexica unidadBar() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.BBAJA); 
   } 
   public UnidadLexica unidadConst() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.CONST); 
   }
   public UnidadLexica unidadPC() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.PC); 
   } 
   public UnidadLexica unidadComillas() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.COMILLAS); 
   } 
   public UnidadLexica unidadArroba() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ARBA); 
   } 
   public UnidadLexica unidadComa() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.COMA); 
   }
   public UnidadLexica unidadÑotIgual() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑOT); 
   }
   public UnidadLexica unidadÑot() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.ÑOTIGUAL); 
   } 
   public UnidadLexica unidadEof() {
      return new UnidadLexica(alex.fila(),alex.columna(),ClaseLexica.EOF); 
   }
}
