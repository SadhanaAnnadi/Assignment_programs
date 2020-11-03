using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DecoratorDP
{
    public interface ICar
    {
        string Make { get; }
        double GetPrice();
    }
    public sealed class Hyndai : ICar
    {
        public string Make
        {
            get
            {
                return "HatchBank";
            }
           
        }
        public double GetPrice()
        {
            return 800000;
        }

    }
}
