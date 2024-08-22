/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pchennia <pchennia@student.42.fi>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/21 23:26:37 by pchennia          #+#    #+#             */
/*   Updated: 2024/08/22 08:51:43 by pchennia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

int	check_path_validity(const char *path)
{
	int	fd;

	fd = open(path, O_RDONLY);
	if (fd < 0)
	{
		printf("Error: Invalid path '%s'\n", path);
		return (1);
	}
	close(fd);
	return (0);
}

int	check_ext(char *str, char *ext)
{
	int		i;
	char	*strext;

	i = ft_strlen(str);
	if (i > 4)
	{
		strext = &str[i - ft_strlen(ext)];
		if (!ft_strncmp(strext, ext, ft_strlen(ext)))
			return (1);
	}
	return (0);
}

void init_data()
{
	return ;
}
void parse_data()
{
	return ;
}

void render_game()
{
	return ;
}

int	main(int argc, char **argv)
{
	if (argc == 2 && check_ext(argv[1], ".cub"))
	{
		if (check_path_validity(argv[1]) == 0)
		{
			init_data();
			parse_data();
			render_game();
		}
	}
	else
		printf("Error : Invalid arguments\n");
	return (0);
}