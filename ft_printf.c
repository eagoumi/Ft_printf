/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ayagoumi <ayagoumi@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 01:55:58 by eagoumi           #+#    #+#             */
/*   Updated: 2022/11/20 12:14:56 by ayagoumi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdarg.h>

int	ft_return_un(const char *form, int i, va_list *ptr)
{
	int	len;

	len = 0;
	if (form[i] == 'u')
		len += ft_printf_nbr_u(va_arg(*ptr, unsigned int));
	else if (form[i] == 'x')
		len += ft_printfhexlow(va_arg(*ptr, unsigned int));
	else if (form[i] == 'X')
		len += ft_printfhexupp(va_arg(*ptr, unsigned int));
	else if (form[i] == 'p')
		len += ft_printf_str("0x") + ft_printfadd(va_arg(*ptr, unsigned long));
	else if (form[i] == '%')
		len += ft_printf_char('%');
	else if (form[i] == 'i')
		len += ft_printf_nbr(va_arg(*ptr, int));
	else if (form[i] == 'c')
		len += ft_printf_char(va_arg(*ptr, int));
	else
		len += ft_printf_char(form[i]);
	return (len);
}

int	ft_printf(const char *form, ...)
{
	va_list	ptr;
	int		i;
	int		len;

	i = 0;
	len = 0;
	va_start(ptr, form);
	while (form[i])
	{
		if (form[i] == '%')
		{
			i++;
			if (form[i] == 's')
				len += ft_printf_str(va_arg(ptr, char *));
			else if (form[i] == 'd')
				len += ft_printf_nbr(va_arg(ptr, int));
			else
				len += ft_return_un(form, i, &ptr);
		}
		else
			len += ft_printf_char(form[i]);
		i++;
	}
	return (va_end(ptr), len);
}
