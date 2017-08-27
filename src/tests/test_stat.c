/* test_stat.c */

#include "../business/stat.c"

void test_stat_delta()
{
	FILE *fp;
	unsigned int i;
	unsigned int j;

	struct stat stat = {40,81,20,0,0};
	struct stat* patient = &stat;

	/* reduce water weight, graph hydration and hydration effects */
	fp = fopen("./test_results/dehydration.txt", "w");
	fprintf(fp, "dehydration\tperformance\r\n");

	for ( i=0; i<150; i++ ) /* number of data points to collect */
	{
		fprintf(fp, "%f\t", stat_hydration(patient));
		fprintf(fp, "%f\r\n", stat_s_curve(stat_hydration(patient)));
		for ( j=0; j<60; j++ ) /* minutes between each data point */
		{
			patient->water -= stat_water_loss(patient->water);
		}
	}
	patient->water = 81;
	fclose(fp);

	fp = fopen("./test_results/sweat.txt", "w");
	fprintf(fp, "sweat/rehydration\tperformance\r\n");
	
	/* graph hydration reduction due to sweat */
	for ( i=0; i<18; i++ ) 
	{
		fprintf(fp, "%f\t", stat_hydration(patient));
		fprintf(fp, "%f\r\n", stat_s_curve(stat_hydration(patient)));
		for ( j=0; j<60; j++ ) /* minutes between each data point */
		{
			patient->water -= stat_water_cycle(patient); 
			patient->water -= stat_water_loss(patient->water);
		}
	}
	/* graph rehydration */
	for ( i=0; i<74; i++ ) 
	{
		fprintf(fp, "%f\t", stat_hydration(patient));
		fprintf(fp, "%f\r\n", stat_s_curve(stat_hydration(patient)));
		for ( j=0; j<60; j++ )
		{
			/* water loss may excede water cycle */
			patient->water += stat_water_cycle(patient);
			patient->water -= stat_water_loss(patient->water);
		}
	}
	fclose(fp);

	fp = fopen("./test_results/starvation.txt", "w");
	fprintf(fp, "starvation\r\n");
	for ( i=0; i<960; i++ )
	{
		fprintf(fp, "%f\r\n", patient->fat);
		for ( j=0; j<60; j++ )
		{
			patient->fat -= stat_fat_loss(patient->grain);
		}
	}
	fclose(fp);
}
