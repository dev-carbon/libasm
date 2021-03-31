/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: humanfou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/30 00:09:11 by humanfou          #+#    #+#             */
/*   Updated: 2021/03/30 00:09:20 by humanfou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <errno.h>

size_t	ft_strlen(char *str);
char	*ft_strcpy(char *dest, char *src);
int		ft_strcmp(char *s1, char *s2);
ssize_t	ft_write(int fd, const void *buf, size_t count);

int	main(int ac, char **av)
{
	int		ret1;
	int		ret2;
	char	d1[64];
	char	d2[64];

	if (ac == 3)
	{
		printf("\n==> source [ %s ]\n\n", av[1]);
		printf("=========================================\n");
		printf("#\tx64 ft_strlen VS std strlen\t#\n");
		printf("=========================================\n");
		ret1 = ft_strlen(av[1]);
		ret2 = ft_strlen(av[1]);
		printf("\tret x64 ==> %d\n", ret1);
		printf("\tret std ==> %d\n", ret2);
		if (ret1 == ret2)
			printf("\tStatus  [ Ok ]\n");
		else
			printf("\tStatus  [ Ko ]\n");

		printf("\n=========================================\n");
		printf("#\tx64 ft_strcpy VS std strcpy\t#\n");
		printf("=========================================\n");
		ft_strcpy(d1, av[1]);
		ft_strcpy(d2, av[1]);
		printf("==> Ret x64 [ dest : %s ]\n", ft_strcpy(d1, av[1]));
		printf("==> Ret std [ dest : %s ]\n", strcpy(d2, av[1]));
		if (strcmp(d1, d2) == 0)
			printf("==> Status  [ Ok ]\n");
		else
			printf("== >Status  [ Ko ]\n");

		printf("\n=========================================\n");
		printf("#\tx64 ft_strcmp VS std strcmp\t#\n");
		printf("=========================================\n");
		ret1 = ft_strcmp(av[1], av[2]);
		ret2 = strcmp(av[1], av[2]);
		printf("==> Ret x64 [ %d ]\n", ret1);
		printf("==> Ret std [ %d ]\n", ret2);
		if (ret1 == ret2)
			printf("==> Status  [ Ok ]\n");
		else
			printf("== >Status  [ Ko ]\n");
		char *s = "hello";
		ft_write(1, s, 2);		
	}
	return (0);
}
