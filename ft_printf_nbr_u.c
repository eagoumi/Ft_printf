/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_nbr_u.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eagoumi <eagoumi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/16 04:26:23 by eagoumi           #+#    #+#             */
/*   Updated: 2022/11/16 04:26:23 by eagoumi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

size_t	ft_revnum_u(size_t revn, size_t *div)
{
	size_t	remainder;
	size_t	reverse;

	reverse = 0;
	while (revn != 0)
	{
		remainder = (revn % 10);
		reverse = reverse * 10 + remainder;
		revn /= 10;
		*div = *div * 10;
	}
	return (reverse);
}

size_t	ft_count_u(unsigned int revn)
{
	size_t	remainder;
	size_t	reverse;
	size_t	signe;

	reverse = 0;
	signe = 0;
	if (revn == 0)
		signe = 1;
	while (revn != 0)
	{
		remainder = (revn % 10) * signe;
		reverse = reverse * 10 + remainder;
		revn /= 10;
		signe++;
	}
	return (signe);
}

char	*ft_itoa_u(unsigned int number)
{
	char	*str;
	size_t	nb;
	size_t	div;
	int		i;

	div = 1;
	nb = ft_revnum_u(number, &div);
	i = 0;
	str = (char *)malloc(sizeof(char) * ft_count_u(number) + 1);
	if (str == NULL)
		return (NULL);
	if (number == 0)
		str[i++] = '0';
	while (div > 9)
	{
		str[i] = (nb % 10) + 48;
		nb /= 10;
		div = div / 10;
		i++;
	}
	str[i] = '\0';
	return (str);
}

int	ft_printf_nbr_u(unsigned int nb)
{
	char	*str;
	int		len;

	str = ft_itoa_u(nb);
	len = ft_printf_str(str);
	free(str);
	return (len);
}
