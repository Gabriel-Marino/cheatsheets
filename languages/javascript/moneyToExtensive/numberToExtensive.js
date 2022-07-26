"use-strict";

import * as affixes from './affixes.js';

function main(number, lang='pt-br')
{
	let currencyCoin = "";
	const currency = number.toString().match(/^.+\$/) ? number.toString().match(/^.+\$/)[0] : undefined;
	const currencys = {
		"R$pt-br": "Reais Brasileiros",
		"US$pt-br": "Dólares Americanos",
		"€pt-br": "Euros",
		"R$en": " Brazilian Real",
		"US$en": "American Dollars",
		"€en": "Euros",
	};

	if (currency && currencys[currency + lang]) currencyCoin = currencys[currency + lang];

	if (number < 0)
	{
		const err = {
			"pt-br": "Valor negativo não é permitido.",
			"en-us": "Negative values are not allowed.",
		};
		if (err[lang]) return err[lang];
	}

	if (number === 0)
	{
		const err = {
			"R$": "Zero Reais.",
			"US$": "Zero dollars.",
		};
		if (err[lang]) return err[lang];
	}

	if (number > 999999999999)
	{
		const err = {
			"pt-br": "Valor excede o limite.",
			"en-us": "Value is overflowing.",
		};
		if (err[lang]) return err[lang];
	}

	const strigfing = number.toString();
	const filtering = strigfing.match(/\d+/)[0];
	const reversing = filtering.split('').reverse();

	const unity = reversing[0];
	const tens = reversing[1];
	const hundreds = reversing[2];
	const thousands = reversing[3];
	const tenThousands = reversing[4];
	const hundredThousands = reversing[5];
	const millions = reversing[6];
	const tenMillions = reversing[7];
	const hundredMillions = reversing[8];
	const billions = reversing[9];
	const tenBillions = reversing[10];
	const hundredBillions = reversing[11];

	if (unity)
	{
		if (tens < 2)
		{
			return `${affixes.tenth[tens + unity]} ${currencyCoin}`;
		}

		if (tens >= 2)
		{
			if (hundreds)
			{
				if (thousands)
				{
					if (tenThousands)
					{}

					return ``;
				}

				return ;
			}

			return `${affixes.tens[tens]} and ${affixes.unity[unity]} ${currencyCoin}`;
		}

		return `${affixes.unitsEn[unity]} ${currencyCoin}`;
	}
}