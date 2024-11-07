package alex;

%%
%char
%line
%column
%class AnalizadorLexicoTiny
%type  UnidadLexica
%unicode

%{
  private ALexOperations ops;
  public String lexema() {return yytext();}
  public int fila() {return yyline+1;}
  public int columna() {return yycolumn+1;}
%}

%eofval{
  return ops.unidadEof();
%eofval}

%init{
  ops = new ALexOperations(this);
%init}

letra  = ([A-Z]|[a-z]|[ñ-Ñ])
ñue = ñue
ñalse = ñalse
digitoPositivo = [1-9]
digito = ({digitoPositivo}|0)
simboloConOperadores = [_-¿?¡!$(){}[].,+-*/\<>&%@€:;]
simboloSinOperadores = [_-¿?¡!$(){}[]:]

parteEntera = {digito}*
parteDecimal = {digito}* {digitoPositivo}

separador = [ \t\r\b\n]
comentario = #[^\n]* 

identificador = ({letra})({simboloSinOperadores}|{digito}|{letra})* 
ñint = ñint
valorÑint = [\+\-]?{parteEntera}
ñouble = ñouble
valorÑouble = [\+\-]?{parteEntera}\.{parteDecimal}
ñhar = ñhar
valorÑhar = ({letra}|{simboloConOperadores}|{digito})
ñtring = ñtring
valorÑtring = ({ñhar}|{digito})*
ñoolean = ñoolean
valorÑoolean = ({ñue}|{ñalse})
ñif = ñif
ñelsif = ñelsif
ñelse = ñelse
ñor = ñor
ñhile = ñhile
ño = ño
operadorSuma = \+
operadorResta = \-
operadorMultiplicacion = \*
operadorDivision = \/
operadorMenor = menor
operadorMayor = mayor
operadorMenorIgual = menorigual
operadorMayorIgual = mayorigual
parentesisApertura = \(
parentesisCierre = \)
igual = \>\<
igualApertura = \<
igualCierre = \>
barrabaja = \_
constante = \¢
arroba = \@

coma  = ,
%%
{separador}               {}
{comentario}              {}

{identificador}           {return ops.unidadId();}
{numeroEntero}            {return ops.unidadEnt();}
{numeroReal}              {return ops.unidadReal();}
{operadorSuma}            {return ops.unidadSuma();}
{operadorResta}           {return ops.unidadResta();}
{operadorMultiplicacion}  {return ops.unidadMul();}
{operadorDivision}        {return ops.unidadDiv();}
{parentesisApertura}      {return ops.unidadPAp();}
{parentesisCierre}        {return ops.unidadPCierre();} 
{igual}                   {return ops.unidadIgual();} 
{coma}                    {return ops.unidadComa();}
[^]                       {ops.error();}  
{numeroBinario}           {return ops.unidadBinario();}
{numeroHexadecimal}       {return ops.unidadHexadecimal();}

