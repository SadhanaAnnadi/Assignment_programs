using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrototypeDP
{
    class Program
    {
        static void Main(string[] args)
        {
            Employee emp1 = new Employee();
            emp1.Name = "Sindu";
            emp1.Department = "CSE";
            Employee emp2 = emp1.GetClone();
            emp2.Name = "Rohith";
            Console.WriteLine("Emplpyee 1: ");
            Console.WriteLine("Name: " + emp1.Name + ", Department: " + emp1.Department);
            Console.WriteLine("Emplpyee 2: ");
            Console.WriteLine("Name: " + emp2.Name + ", Department: " + emp2.Department);
            Console.Read();
        }
    }
    public class Employee
    {
        public string Name { get; set; }
        public string Department { get; set; }
        public Employee GetClone()
        {
            return (Employee)this.MemberwiseClone();
        }
    }
}
