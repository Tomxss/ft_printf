#ifndef FT_PRINTF_H
# define FT_PRINTF_H

/*
 * ------------------------ Headers -----------------------------------
 */

# include "libft/libft.h"
# include <stdarg.h>
# include <errno.h>

/*
 * -------------------- Macros Definition -----------------------------
 */

# define MAX(a, b)	b & ((a - b) >> 31) | a & (~(a - b) >> 31)
			// & is a bitwise AND operator, checks if b & (a - b) are equal
			// 3 >> 31 similar to 3 / 2^31.
			// | means redirect output for further processing.
			// The ~ (Tilde/Twiddle) is a bitwise NOT operator:
			// all the 0's are set to 1's and all the 1's to 0's.

