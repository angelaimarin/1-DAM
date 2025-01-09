string cadena = "";
p v main () {
  local ();
  local2();
  S.O.P(cadena);
 }
 
 local(){
 cadena="asd";
 }
 
 local2(){
 cadena = cadena+"hola";
 }
 
/*Como la variable string esta vacia primero indicamos que se llama en local asd pero como luego indicamos que vale hola entonc se queda q vale local2 porque lo borra */

string cadena = "egbds";
p v main () {
  local ();
  local2();
  S.O.P(cadena);
 }
 
 local(){
 cadena="asd";
 }
 
 local2(){
 cadena = cadena+"hola";
 }
 
 /*No se podria realizar ya que le hemos dado un valor al principio por lo que no sabrian que existe esa va,loriable teniendo que nombrarla otra vez en cada una ya que no tiene un static para poder utilizarlo en los demas */