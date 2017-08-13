/* test_stat.c */

#include "./business/stat.c"

void test_stat_delta()
{
	/* writes change-in-stats to file for graphing */
	struct stat stat = {0,0,0,0,0};
	stat.water = 81;
	assert(stat.water == 81);
}
