using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CompositeDP
{
    class Program
    {
        static void Main(string[] args)
        {
            //Creating Leaf Objects
            Components hardDisk = new Leaf("Hard Disk", 2000);
            Components ram = new Leaf("RAM", 3000);
            Components cpu = new Leaf("CPU", 2000);
            Components mouse = new Leaf("Mouse", 2000);
            Components keyboard = new Leaf("Keyboard", 2000);
            //Creating composite objects
            Composite motherBoard = new Composite("Peripherals");
            Composite cabinet = new Composite("Cabinet");
            Composite peripherals = new Composite("Peripherals");
            Composite computer = new Composite("Computer");
            //Creating tree structure
            //Ading CPU and RAM in Mother board
            motherBoard.AddComponent(cpu);
            motherBoard.AddComponent(ram);
            //Ading mother board and hard disk in Cabinet
            cabinet.AddComponent(motherBoard);
            cabinet.AddComponent(hardDisk);
            //Ading mouse and keyborad in peripherals
            peripherals.AddComponent(mouse);
            peripherals.AddComponent(keyboard);
            //Ading cabinet and peripherals in computer
            computer.AddComponent(cabinet);
            computer.AddComponent(peripherals);
            //To display the Price of Computer
            computer.DisplayPrice();
            Console.WriteLine();
            //To display the Price of Keyboard
            keyboard.DisplayPrice();
            Console.WriteLine();
            //To display the Price of Cabinet
            cabinet.DisplayPrice();
            Console.Read();
        }
    }
}
