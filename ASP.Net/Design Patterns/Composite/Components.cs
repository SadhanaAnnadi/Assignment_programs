using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CompositeDP
{
    public interface Components
    {
        void DisplayPrice();
    }
    public class Leaf : Components
    {
        public int Price { get; set; }
        public string Name { get; set; }
        public Leaf(string name, int price)
        {
            this.Price = price;
            this.Name = name;
        }

        public void DisplayPrice()
        {
            Console.WriteLine(Name + " : " + Price);
        }
    }
    public class Composite : Components
    {
        public string Name { get; set; }
        List<Components> components = new List<Components>();
        public Composite(string name)
        {
            this.Name = name;
        }
        public void AddComponent(Components component)
        {
            components.Add(component);
        }

        public void DisplayPrice()
        {
            Console.WriteLine(Name);
            foreach (var item in components)
            {
                item.DisplayPrice();
            }
        }
    }
}
