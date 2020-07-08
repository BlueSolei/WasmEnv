#include <string>

#ifdef __cplusplus
extern "C" {
#endif

const char *Greet() {
  static std::string greet = "Me Greeting U";
  return greet.c_str();
}

#ifdef __cplusplus
}
#endif