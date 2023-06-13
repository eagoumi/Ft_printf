/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ayagoumi <ayagoumi@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 01:54:22 by eagoumi           #+#    #+#             */
/*   Updated: 2022/11/20 11:58:52 by ayagoumi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdio.h>
# include <unistd.h>
# include <string.h>
# include <ctype.h>
# include <stdlib.h>
# include <limits.h>
# include <stdarg.h>

int	ft_printf_char(char c);
int	ft_printf_str(char *string);
int	ft_printf_nbr_u(unsigned int nb);
int	ft_printf_nbr(int nb);
int	ft_printfhexlow(unsigned int nbr);
int	ft_printfhexupp(unsigned int nbr);
int	ft_printf(const char *form, ...);
int	ft_printfadd(unsigned long nbr);

#endif