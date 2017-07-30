/* stat.c */

struct stat
{
	float grain; /* weight minus fat and water; measures strength */
	float water; /* pounds of water, max is 2.0*grain + 0.1*fat */
	float fat; /* depends on food availability and appetite */

	float exhaust; /* number of minutes working without rest */
	float metabolism; /* fat turned into energy every minute of work */
};

float stat_s_curve(float percent) /* argument between 1.0 and 0.0 */
{
	/* morphs stat level into gradual initial and final decline */
	return (3 * (percent*percent)) - (2 * (percent*percent*percent));
}

float stat_weight(struct stat* stat)
{
	/* total pounds of body weight without tare */
	return stat->grain + stat->water + stat->fat;
}

float stat_water_level(struct stat* stat)
{
	/* fraction between healthy (1.0) and deadly (0.0) hydration */ 
	float h = ((2 * stat->water) - (3 * stat->grain)) / stat->grain;
	if ( h > 1 ) return 1;
	if ( h < 0 ) return 0;
	return h;
}

float stat_water_use_max(float stat_grain)
{
	/* sweat amount needed to cool the body to offset heat from work */
	/* multiply by stat_water_level to get actual sweat amount */
	return 0.00125 * stat_grain;
}

float stat_water_gain_loss(float stat_grain)
{
	/* water lost or drank per minute, water source depending */
	return 0.000035 * stat_grain;
}

float stat_fat_use_max(float stat_grain)
{
	/* max fat burned in one minute of intense exercise */
	return 0.0004 * stat_grain;
}

float stat_fat_gain_loss(float stat_grain)
{
	/* fat burned or put-on per minute, food source depending */
	return 0.000008 * stat_grain;
}

/* end of file */
