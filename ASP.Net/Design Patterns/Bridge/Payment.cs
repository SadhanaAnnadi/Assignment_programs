using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeDP
{
    public abstract class Payment //abstraction
    {
        public IpaymentSystem _IpaymentSystem;
        public abstract void MakePayment();
        
    }
    public class CardPayment:Payment //refined Abstraction
    {
        public override void MakePayment()
        {
            _IpaymentSystem.ProcessPayment("CardPayment");

        }
    }
    public class NetBankingPayment:Payment //refined Abstraction
    {
        public override void MakePayment()
        {
            _IpaymentSystem.ProcessPayment("NetBanking");

        }
    }
}
