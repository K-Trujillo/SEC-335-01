#include <stdlib.h>
#include <pwd.h>
#include <stdio.h>
#include <unistd.h>

/*
SEC-335-01 Illustrate SUID Programs

Run the following:
- sudo chown root:root nameofprogram
- sudo chmod u+s namofprogram
*/

int main(int argc, char *argv[])
{
	struct passwd *pw;
	uid_t uid;
	
	uid = geteuid ();
	pw = getpwuid (uid);
	if (pw)
	{
		puts (pw->pw_name);
		exit (EXIT_SUCCESS);
	} else
	{
		puts ("Error");
		exit (EXIT_FAILURE);
	}
}
