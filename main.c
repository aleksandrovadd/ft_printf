/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: daleksan <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/27 15:42:46 by daleksan          #+#    #+#             */
/*   Updated: 2018/03/27 16:10:17 by daleksan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "src/ft_printf.h"

int	main(void)
{
	char *str = "Hello world!";

	ft_printf("%s\n", str);
	ft_printf("You are using my ft_printf to see this massage!");
	ft_printf("\n%d\n", 42);
	ft_printf("%c\n", 'A');

	return (0);
}
