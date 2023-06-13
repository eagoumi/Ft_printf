/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printfhexupp.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eagoumi <eagoumi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/16 04:26:38 by eagoumi           #+#    #+#             */
/*   Updated: 2022/11/16 04:26:38 by eagoumi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./ft_printf.h"

int	ft_printfhexupp(unsigned int nbr)
{
	char	*base_16;
	int		len;

	base_16 = "0123456789ABCDEF";
	len = 0;
	if (nbr < 16)
	{
		write(1, &base_16[nbr], 1);
		len++;
	}
	else
	{
		len += ft_printfhexupp(nbr / 16);
		len += ft_printfhexupp(nbr % 16);
	}
	return (len);
}
