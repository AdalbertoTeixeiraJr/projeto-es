main(){

int var1;
int var2;

var1 = 2;
var2 = 3;

if(var2 > var1) 
var2 = var2 - 1;
else var2 = var2 + 1;
// var2 = 2

if(var2 >= var1)
var2 = var2 - 1;
else var2 = var2 + 1;
// var2 = 1

if(var2 < var1)
var2 = var2 + 1;
else var2 = var2 - 1;
// var2 = 2

if(var2 <= var1)
{
var2 = 1;
var1 = 1;
}
else{
var2 = 0;
var1 = 1;
}
// var2 = 1
// var1 = 1

if(var2 == var1)
var2 = 0;
else var2 = var2 + 1;
// var2 = 0

if(var2 != var1)
var2 = 1;
else var2 = 0;
// var2 = 1

if(var2 != var1)
var2 = var2 + 1;
else var2 = 0;
// var2 = 0
// var1 = 1

if(var2 != 0)
var2 = var2 + 1;
else if(var2 < 0)
var2 = var2 - 1;
else
var2 = 0;
// var2 = 0;
}
