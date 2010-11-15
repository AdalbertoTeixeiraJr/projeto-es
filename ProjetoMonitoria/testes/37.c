main(){
int a;
a = 0;
int b;
b = 1;
if (a < 1){
	a = 0;
	if(b == 1){
		b = 0;
	}
}
if(b > 1){
	a = 1;
}
else{
	a = -1;
}
}
