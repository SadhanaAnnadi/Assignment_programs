using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DecoratorDP
{
    class Program
    {
        static void Main(string[] args)
        {
            ICar car = new Hyndai();
            CarDecorator decorator = new OfferPrice(car);
            Console.WriteLine(string.Format("Make : {0} price: {1}" + " DiscountPrice: {2}", decorator.Make,
                decorator.GetPrice().ToString(), decorator.GetDiscountedPrice().ToString()));
            Console.ReadKey();
        }
    }
}
