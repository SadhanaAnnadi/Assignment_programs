using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FinalProject.Models;

namespace FinalProject.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Main()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Admin objchk)

        {
            if (ModelState.IsValid)
            {
                using (PecuniaBankEntities db = new PecuniaBankEntities())
                {
                    var obj = db.Admins.Where(a => a.Username.Equals(objchk.Username) && a.Password.Equals(objchk.Password)).FirstOrDefault();

                    if (obj != null)
                    {

                        Session["Username"] = obj.Username.ToString();

                        Session["Password"] = obj.Password.ToString();
                        //objchk.LoginErrorMsg = "Login Successfully.";

                        //return View("Login", objchk);
                        return RedirectToAction("Main", "Admin");


                    }
                    else
                    {

                        ModelState.AddModelError("", "The Account_number or password is incorrect");
                    }

                }
            }

            return View(objchk);
        }

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Admin");
        }


    }
}
   