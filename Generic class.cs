using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Genericclass
{
    public class Example <T>
    {
        T data;
        public Example(T check)
        {
            this.data = check;
        }
        public void write()
        {
            Console.WriteLine("the value passed is: " + this.data);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Example<int> ex = new Example<int>(100);
            Example<string> exp = new Example<string>("Hello World");
            ex.write();
            exp.write();
            Console.ReadKey();

        }
    }
}
