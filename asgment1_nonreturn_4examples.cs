using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace asgnment1_nonreturn_example
{
    class Program
    {
        public delegate void HelloDelegate(string greet);
        public delegate void AddDelegate(double val1,double val2);
        public delegate void subDelegate(double val1, double val2);
        public delegate void MultiplyDelegate(int val1, int val2);

        static void Main(string[] args)
        {
            HelloDelegate hd = delegate (string greet)
              {
                  Console.WriteLine(greet);
              };
              hd.Invoke("Good Morning!!");
            AddDelegate ad = delegate (double val1,double val2)
            {
                Console.WriteLine(val1+val2);
            };
            ad.Invoke(123.3446,2343.44466);
            subDelegate sd = delegate (double val1, double val2)
            { 
                Console.WriteLine(val1-val2);
            };
            sd.Invoke(365.35356,123.43454);
            MultiplyDelegate md = delegate (int val1,int val2)
            {
                Console.WriteLine(val1 * val2);
            };
            sd.Invoke(125, 132);
            Console.ReadKey();

        }
    }
}
