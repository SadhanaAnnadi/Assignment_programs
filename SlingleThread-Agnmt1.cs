using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace SingleThread_asgnt1
{
    class Program
    {
        public string  Thread1(string str)
        {
            for(int i=1;i<10;i++)
            {
                Console.WriteLine("This is Thread1 started");
            }
            return str;
         }
        public int Thread2(int val1,int val2)
        {
            
            for(int i=1;i<10;i++)
            {
                Console.WriteLine("This is Thread2 started");
                if (i==4)
                {
                    Console.WriteLine("thread2 will be in sleep for 10 sec");
                    Thread.Sleep(10000);
                }
            }
            Console.WriteLine("sum of two values is: ");
            return val1 + val2;
        }
        
        public string Thread3()
        {
            return "This is single thread 3";
        }
        static void Main(string[] args)
        {
            Program p = new Program();
            Console.WriteLine(p.Thread1("Thread one ended"));
            Console.WriteLine(p.Thread2(10,20));
            Console.WriteLine(p.Thread3());
            Console.ReadKey();

        }
    }
}
