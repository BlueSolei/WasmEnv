#include <iostream>
#include <string>

#include "src/Greet.h"

int main() {
  std::string greet = Greet();
  std::cout << "Hello Emscripten. " << greet << std::endl;
}
