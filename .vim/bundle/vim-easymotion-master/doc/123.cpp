#include <iostream>
using namespace std;
char c;
int main()
{
    for (c='A';c<='Z';++c)
      cout<<static_cast<int>(c)<<" ";
}
