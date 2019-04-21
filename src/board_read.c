#include "board_read.h"
#include <stdio.h>
#include <stdlib.h>

char *board_read() {
    char *str = calloc(7, sizeof(char));
    int flag;
    do {
        scanf("%6s", str);
        flag = (check_input(str));
        if (flag) {
            printf("Incorrect input, try again\n");
        }
    } while (flag);
    return str;
}

int check_input(char *str) {
    if (str[0] < 'a' || str[0] > 'h'
        || str[1] < '1' || str[1] > '8'
        || str[2] != '-'
        || str[3] < 'a' || str[3] > 'h'
        || str[4] < '1' || str[4] > '8'
        || str[5] != '\0') {
        return 1;
    }
    else {
        return 0;
    }
}
