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

letra  = ([A-Z]|[a-z]|[Ñ-ñ])
ñue = ñue
ñalse = ñalse
digitoPositivo = [1-9]
digito = ({digitoPositivo}|0)


parteEntera = {digito}{digito}*
parteDecimal = {digito}* {digitoPositivo}

separador = [ \t\r\b\n]
comentario = #[^\n]* 


ñint = ñint
valorÑint = [\+\-]?{parteEntera}
ñouble = ñouble
valorÑouble = [\+\-]?{parteEntera}\.{parteDecimal}
ñhar = ñhar
valorÑhar = ({letra}|{digito})
ñtring = ñtring
valorÑtring = ({valorÑhar}|{digito})({valorÑhar}|{digito})*
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
parentesisApertura = \(
parentesisCierre = \)
tamaño = \\
igual = \>\<
igualApertura = \<
igualCierre = \>
llaveApertura = \{
llaveCierre = \}
puntoComa = \;
comillas = \"
barrabaja = \_
identificador = ({barrabaja})({letra})({digito}|{letra})* 
constante = \¢
arroba = \@
coma  = ,
ñotIgual = \!\>\<
ñot = \!
%%
{separador}               {}
{comentario}              {}


{valorÑint}               {return ops.unidadEnt();}
{valorÑouble}             {return ops.unidadReal();}
{valorÑhar}               {return ops.unidadChar();}
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
{operadorSuma}            {return ops.unidadSuma();}
{operadorResta}           {return ops.unidadResta();}
{operadorMultiplicacion}  {return ops.unidadMul();}
{operadorDivision}        {return ops.unidadDiv();}
{operadorMenor}           {return ops.unidadMenor();}
{operadorMayor}           {return ops.unidadMayor();}
{operadorMenorIgual}      {return ops.unidadMenorIgual();}
{operadorMayorIgual}      {return ops.unidadMayorIgual();}
{valorÑtring}             {return ops.unidadStr();}
{identificador}           {return ops.unidadId();}
{parentesisApertura}      {return ops.unidadPAp();}
{parentesisCierre}        {return ops.unidadPCierre();} 
{tamaño}                  {return ops.unidadTam();}
{igual}                   {return ops.unidadIgual();} 
{igualApertura}           {return ops.unidadIAp();}
{igualCierre}             {return ops.unidadICierre();}
{llaveApertura}           {return ops.unidadLLAp();}
{llaveCierre}             {return ops.unidadLLCierre();}
{puntoComa}               {return ops.unidadPC();}
{comillas}                {return ops.unidadComillas();}
{barrabaja}               {return ops.unidadBar();}
{constante}               {return ops.unidadConst();}
{arroba}                  {return ops.unidadArroba();}
{coma}                    {return ops.unidadComa();}
{ñotIgual}                {return ops.unidadÑotIgual();}
{ñot}                     {return ops.unidadÑot();}
[^]                       {ops.error();}  

