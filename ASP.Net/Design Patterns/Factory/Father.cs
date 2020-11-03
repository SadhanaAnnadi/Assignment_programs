using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryDP
{
    public abstract class Father
    {
        protected abstract Fruit GetFruit();//interface method for creating object
        public void Makejuice()
        {
            var fruit = GetFruit();
            Console.WriteLine("The juice has been made using the fruit : " + fruit.GetType().Name);
        }
        
    }
    public class Kid1:Father//sub class to decide the instance
    {
        protected override Fruit GetFruit()
        {

            return new Apple();
        }
    }
    public class Kid2:Father
    {
        protected override Fruit GetFruit()
        {
            return new orange();
        }

    }
}
