#include "board_print_plain.h"
#include <iostream>

void board_print_plain(char deck[8][8])
{
    for (int number = 0; number < 8; ++number)
    {
        cout << 8 - number;
        for (int letter = 0; letter < 8; ++letter)
        {
            cout << deck[number][letter];
        }
        cout << endl;
    }
    cout << "  a b c d e f g h " << endl;
}