#include <unistd.h>
#include <stdlib.h>

int	main(void)
{
	while (1)
	{
		system("sh /home/atreus/wallpaper_engine/change_wallpaper.sh");
		sleep(20);
	}
	return (0);
}
