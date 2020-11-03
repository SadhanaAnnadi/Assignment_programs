using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeDP
{
    class Program
    {
        static void Main(string[] args)
        {
            Payment order = new CardPayment();
            order._IpaymentSystem = new CitiPaymentSystem();
            order.MakePayment();
            order._IpaymentSystem = new IDBIPaymentSystem();
            order.MakePayment();

            order = new NetBankingPayment();
            order._IpaymentSystem = new CitiPaymentSystem();
            order.MakePayment();
            order._IpaymentSystem = new IDBIPaymentSystem();
            order.MakePayment();

            Console.ReadKey();
        }
    }
}
