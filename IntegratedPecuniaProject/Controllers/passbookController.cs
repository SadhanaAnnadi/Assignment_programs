using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FinalProject.Models;

namespace FinalProject.Controllers
{
    public class passbookController : Controller
    {
        MvcCudEntities MC = new MvcCudEntities();
        // GET: passbook
        public ActionResult Account_summary()
        {
            return View();

        }

        [HttpPost]
        public ActionResult Account_summary(Transcation model)
        {
            MC.Transcations.Add(model);
            if(model.PayeeAccountNo== 186745004532)
            {
                return RedirectToAction("user1");
            }
            if (model.PayeeAccountNo == 100000002)
            {
                return RedirectToAction("user2");
            }
            if (model.PayeeAccountNo == 100000003)
            {
                return RedirectToAction("user3");
            }

            return View();

        }
        public ActionResult user1()
        {
            var data = MC.Transcations.SqlQuery("select * from Transcation where PayeeAccountNo=186745004532 ");
       return View(data);
                }
        public ActionResult user2()
        {
            var data = MC.Transcations.SqlQuery("select * from Transcation where PayeeAccountNo=100000002 ");
            return View(data);
        }
        public ActionResult user3()
        {
            var data = MC.Transcations.SqlQuery("select * from Transcation where PayeeAccountNo=100000003 ");
            return View(data);
        }
    }
}