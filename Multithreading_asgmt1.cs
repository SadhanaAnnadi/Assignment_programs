using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace Multithreading_asgmt1
{
    class Program
    {
        public string Thread1(string str)
        {
            for(int i=1;i<=10;i++)
            {
                Console.WriteLine("This is Thread1 with position: " + i);
            }
            return str; 
        }
        public int Thread2(int val1,int val2)
        {
            Console.WriteLine("This is thread 2 starting");
            Console.WriteLine("The sum value is {0}" , (val1 + val2));
            Console.WriteLine("Thread 2 ended");
            return val1+val2;
        }
        public string Thread3()
        {
            string str = "Thread 3 ended";
            for (int i = 1; i < 10; i++)
            {
                Console.WriteLine("Thread3 is in position: "+i);
            }
            Console.WriteLine(str);
            return str ;
        }
        static void Main(string[] args)
        {
            Program p = new Program();
            Thread T1 = new Thread(()=>p.Thread1("Thread 1 ends here"));
            
            Thread T2 = new Thread(()=>p.Thread2(10,20));
            Thread T3 = new Thread(()=>p.Thread3());
            T1.Start(); T2.Start(); T3.Start();
                       
            Console.ReadKey();
        }
    }
}
