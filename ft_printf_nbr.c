/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_nbr.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eagoumi <eagoumi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/16 04:26:27 by eagoumi           #+#    #+#             */
/*   Updated: 2022/11/16 04:26:27 by eagoumi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

size_t	ft_revnum(int revn, size_t *div)
{
	size_t	remainder;
	size_t	reverse;
	int		signe;

	reverse = 0;
	signe = 1;
	if (revn < 0)
		signe = -1;
	while (revn != 0)
	{
		remainder = (revn % 10) * signe;
		reverse = reverse * 10 + remainder;
		revn /= 10;
		*div = *div * 10;
	}
	return (reverse);
}

size_t	ft_countnum(int revn)
{
	size_t	remainder;
	size_t	reverse;
	size_t	signe;

	reverse = 0;
	signe = 0;
	if (revn == 0)
		signe = 1;
	if (revn < 0)
		signe++;
	while (revn != 0)
	{
		remainder = (revn % 10) * signe;
		reverse = reverse * 10 + remainder;
		revn /= 10;
		signe++;
	}
	return (signe);
}

char	*ft_itoa(int n)
{
	int		j;
	size_t	numrev;
	size_t	div;
	char	*itoastr;

	div = 1;
	numrev = ft_revnum(n, &div);
	j = 0;
	itoastr = (char *)malloc(sizeof(char) * (ft_countnum(n) + 1));
	if (itoastr == NULL)
		return (NULL);
	if (n < 0)
		itoastr[j++] = '-';
	else if (n == 0)
		itoastr[j++] = '0';
	while (div > 9)
	{
		itoastr[j] = 48 + (numrev % 10);
		numrev = numrev / 10;
		div /= 10;
		j++;
	}
	itoastr[j] = '\0';
	return (itoastr);
}

int	ft_printf_nbr(int nb)
{
	char	*str;
	int		len;

	str = ft_itoa(nb);
	len = ft_printf_str(str);
	free (str);
	return (len);
}
