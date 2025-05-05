#include "COMPILER.H"
#include <iostream>
#include <stdlib.h>
#include <string>
#include <stdio.h>
#include <unistd.h>

using namespace std;
int test;


int main()
{
  cout << "teste iniciando compilador" << endl;
  cin >> test;
  if (test == 1) {
    for (test = 1; test <= 100; test++) {
            fflush(stdin);
    cout << "\r";
        cout << test << "%";
        fflush(stdout);
    }
  }


    return 0;
}
