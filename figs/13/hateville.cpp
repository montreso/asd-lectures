#include <iostream>
using namespace std;

int max(int a, int b) {
	return (a>b ? a : b);
}

int hateville(int D[], int n)
{
	int* DP = new int[n+1];
	DP[0] = 0;
	DP[1] = D[0];
	for (int i=2; i<= n; i++) {
		DP[i] = max(DP[i-1],DP[i-2]+D[i-1]);
	}
	return DP[n];
}

int main() {
	int D[] = { 10, 5, 5, 10 };
	cout << hateville(D, 4);
	return 0;
}