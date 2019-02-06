static int i = 0, j = 0, k = 0;

int
main () {

  int g = 0, inc = 1;
  for (; g < 65536; g++) {
    i += inc;
    j += inc;
    k += inc;
  }

  return i+j+k;
}
