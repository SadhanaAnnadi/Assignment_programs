using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ThreadUnsafe
{
    class Demo_of_singleton
    {
        public class Calculate
        {
            private Calculate() { }//private constructor
            private static Calculate obj = null;//instance created for the class calculate
            public static Calculate instance
            {
                get
                {
                    if(obj==null)
                    {
                        obj = new Calculate();
                    }
                    return obj;
                }
            }
            public double valueOne
            {
                get;set;
            }
            public double valuetwo
            {
                get; set;
            }
            public double Addition()
            {
                return valueOne + valuetwo;
            }
            public double Sub()
            {
                return valueOne - valuetwo;
            }
            public double Mul()
            {
                return valueOne * valuetwo;
            }
            public double Div()
            {
                return valueOne/ valuetwo;
            }
        }


        static void Main(string[] args)
        {
            //[className].[instance].variable="assgin value";
            Calculate.instance.valueOne = 10.34;
            Calculate.instance.valuetwo = 13.96;
            Console.WriteLine("Addition= " + Calculate.instance.Addition());
            Console.WriteLine("Substraction= " + Calculate.instance.Sub());
            Console.WriteLine("Multiplication= " + Calculate.instance.Mul());
            Console.WriteLine("Division= " + Calculate.instance.Div());

            Console.ReadKey();

        }
    }
}
