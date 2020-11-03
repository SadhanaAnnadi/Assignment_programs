using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeDP
{
   public interface IpaymentSystem //implementor interface
    {
        void ProcessPayment(string PaymentSystem);
    }
    public class CitiPaymentSystem:IpaymentSystem
    {
       public void ProcessPayment(string PaymentSystem) //concrete Implementor
       {
            Console.WriteLine("Using CitiBank gateWay for " + PaymentSystem);
       }
    }
    public class IDBIPaymentSystem : IpaymentSystem
    {
        public void ProcessPayment(string PaymentSystem) //concrete implementor
        {
            Console.WriteLine("Using IDBIBank gateWay for " + PaymentSystem);
        }
    }
}
