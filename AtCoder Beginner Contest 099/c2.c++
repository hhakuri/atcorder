#include <iostream>
#include <math.h>
using namespace std;
int main () {
  int n = 0;
  cin >> n;
  int dp[n+1] = {};

  for (int k = 1; k <= n; k++) {
    dp[k] = k;
    for (int i = 9; i <= k; i=i*9) {
      if (dp[k] > dp[k-i]+1) dp[k] = dp[k-i]+1;
    }
    for (int i = 6; i <= k; i=i*6) {
      if (dp[k] > dp[k-i]+1) dp[k] = dp[k-i]+1;
    }
  }
  cout << dp[n];
  return 0;
}
// cのほうが全然早い…
