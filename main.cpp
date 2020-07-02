#include <iostream>


extern "C"
{
    int add(int a, int b) { return a + b; }
    int main() { std::cout << "Hello Emscripten" << std::endl; }
}

