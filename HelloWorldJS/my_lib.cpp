#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#define EXTERN_FUNCTION EMSCRIPTEN_KEEPALIVE 
#else 
#define EXTERN_FUNCTION 
#endif

extern "C" {
EXTERN_FUNCTION int GetAnswer() {
  int i = 40, j = 2;
  int ans = i + j;
  return ans;
}
}