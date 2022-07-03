/* just  the first thing i could though after learned how objects literals works,
 it's was that or somethings too abstract to even me understand later*/

/**
 * A simple calculator made with TypeScript and Object Literals.
 * @params operationname: The name of the operation to be used.
 * @params value1: The first value to be used. In case of power operation, this is the base.
 * @params value2: The second value to be used. In case of power operation, this is the exponent.
 */
function calculator (operationName: string, value1: number, value2: number)
{
    const opertions = {
        sum (value1: number, value2: number)
        {
            return value1 + value2;
        },
        sub (value1: number, value2: number)
        {
            return value1 - value2;
        },
        prod (value1: number, value2: number)
        {
            return value1 * value2;
        },
        div (value1: number, value2: number)
        {
            return value1 / value2;
        },
        pow (value1: number, value2: number)
        {
            return value1 ** value2;
        },
        /** Return the value2-th root of value1. If value2 not specified then return the squre root.*/
        nthroot (value1: number, value2: number = 2)
        {
            return value1 ** (1/value2);
        },
        modulo (value1: number, value2: number)
        {
            return value1 % value2;
        },
        /** Return the ratio between value1 and value2. If value2 not specified then return the percentage.*/
        percentage (value1: number, value2: number = 100)
        {
            return value1 / value2;
        },
    }

    const op = opertions[operationName];
    if (op) return op(value1, value2);
}