#include "xorBit.h"

int main(){
	uint4 a = 1;
	uint4 b = 0;
	uint4* c;
	xor_bit(a, b, &c);
	printf("%d", c);
}
