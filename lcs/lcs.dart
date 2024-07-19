// LCS - Longest Common Subsequence Algorithm
void main() {
  assert(lcs("ABCDGH", "AEDFHR") == 3);
  assert(lcs("LFKGAX", "UYXALK") == 4);
}

int lcs(String X, String Y) {
  var m = X.length;
  var n = Y.length;
  var count = 0;

  var matrix = [];

  for (var i = 0; i < m + 1; i++) {
    var list = [];

    for (var j = 0; j < n + 1; j++) {
      list.add(0);
    }

    matrix.add(list);
  }

  for (var i = 1; i < m + 1; i++) {
    for (var j = 1; j < n + 1; j++) {
      if (X[i - 1] == Y[j - 1]) {
        matrix[i][j] = matrix[i - 1][j - 1] + 1;
        count++;
      } else {
        matrix[i][j] = max(matrix[i - 1][j], matrix[i][j - 1]);
      }
    }
  }

  return count;
}

int max(int a, int b) {
  if (a >= b) {
    return a;
  } else {
    return b;
  }
}
