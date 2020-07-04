#include <iostream>

extern "C" {

int add(int a, int b) {
  return a + b;
}
}

int main() {
  int theAnswer = add(40, 2);
  std::cout << "Hello Emscripten. add(40, 2): " << theAnswer << std::endl;
}
