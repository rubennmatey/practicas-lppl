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


ñint = ñint
valorÑint = [\+\-]?{parteEntera}
ñouble = ñouble
valorÑouble = [\+\-]?{parteEntera}\.{parteDecimal}
ñhar = ñhar
valorÑhar = ({letra}|{simboloConOperadores}|{digito})
ñtring = ñtring
valorÑtring = ({valorÑhar}|{digito})*
ñoolean = ñoolean
valorÑoolean = ({ñue}|{ñalse})
ñif = ñif
ñelsif = ñelsif
ñelse = ñelse
ñor = ñor
ñhile = ñhile
ño = ño
ñun = ñun
ñoid = ñoid
ñeturn = ñeturn
operadorSuma = \+
operadorResta = \-
operadorMultiplicacion = \*
operadorDivision = \/
operadorMenor = menor
operadorMayor = mayor
operadorMenorIgual = menorigual
operadorMayorIgual = mayorigual
identificador = ({letra})({simboloSinOperadores}|{digito}|{letra})* 
parentesisApertura = \(
parentesisCierre = \)
tamañoApertura = \/
tamañoCierre = \\
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


{valorÑint}               {return ops.unidadEnt();}
{valorÑouble}             {return ops.unidadReal();}
{valorÑhar}               {return ops.unidadChar();}
{valorÑtring}             {return ops.unidadStr();}
{valorÑoolean}            {return ops.unidadBool();}
{ñint}                    {return ops.unidadÑint();}
{ñouble}                  {return ops.unidadÑouble();}
{ñhar}                    {return ops.unidadÑhar();}
{ñtring}                  {return ops.unidadÑtring();}
{ñoolean}                 {return ops.unidadÑoolean();}
{ñif}                     {return ops.unidadÑif();}
{ñelsif}                  {return ops.unidadÑelsif();}
{ñelse}                   {return ops.unidadÑelse();}
{ñor}                     {return ops.unidadÑor();}
{ñhile}                   {return ops.unidadÑhile();}
{ño}                      {return ops.unidadÑo();}
{ñun}                     {return ops.unidadÑun();}
{ñoid}                    {return ops.unidadÑoid();}
{ñeturn}                  {return ops.unidadÑeturn();}
{ñue}                     {return ops.unidadÑue();}
{ñalse}                   {return ops.unidadÑalse();}
{operadorSuma}            {return ops.unidadSuma();}
{operadorResta}           {return ops.unidadResta();}
{operadorMultiplicacion}  {return ops.unidadMul();}
{operadorDivision}        {return ops.unidadDiv();}
{operadorMenor}           {return ops.unidadMenor();}
{operadorMayor}           {return ops.unidadMayor();}
{operadorMenorIgual}      {return ops.unidadMenorIgual();}
{operadorMayorIgual}      {return ops.unidadMayorIgual();}
{identificador}           {return ops.unidadId();}
{parentesisApertura}      {return ops.unidadPAp();}
{parentesisCierre}        {return ops.unidadPCierre();} 
{tamañoApertura}          {return ops.unidadTAp();}
{tamañoCierre}            {return ops.unidadTCierre();}
{igual}                   {return ops.unidadIgual();} 
{igualApertura}           {return ops.unidadIAp();}
{igualCierre}             {return ops.unidadICierre();}
{barrabaja}               {return ops.unidadBar();}
{constante}               {return ops.unidadConst();}
{arroba}                  {return ops.undadArroba();}
{coma}                    {return ops.unidadComa();}
[^]                       {ops.error();}  

