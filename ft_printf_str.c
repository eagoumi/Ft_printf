/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_str.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eagoumi <eagoumi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/16 04:26:30 by eagoumi           #+#    #+#             */
/*   Updated: 2022/11/16 04:26:30 by eagoumi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

size_t	ft_strlen(const char *c)
{
	size_t	i;

	i = 0;
	while (c[i] != '\0')
		i++;
	return (i);
}

int	ft_printf_str(char *string)
{
	int	len;

	if (!string)
	{
		write(1, "(null)", 6);
		return (6);
	}
	len = ft_strlen(string);
	write(1, string, len);
	return (len);
}
