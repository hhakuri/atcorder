#include <iostream>
#include <math.h>
using namespace std;
int s(int d, int i, int n, int dp[]) {
  if (d>n) return 1;
  if (dp[d] == NULL) dp[d] = 999;
  if (dp[d] <= i) return 0 ;
  dp[d] = i;
  for (int k = 1; k <= 5; k++) {
    if (s(d+pow(9, k), i+1, n, dp) == 1) break;
  }

  for (int k = 1; k <= 6; k++) {
    if (s(d+pow(6, k), i+1, n, dp) == 1) break;
  }
  if (n-d <= 7) s(d+1, i+1, n, dp);
}

int main () {
  int n = 0;
  cin >> n;
  int dp[n+1] = {};
  s(0, 0, n, dp);
  cout << dp[n];
}
