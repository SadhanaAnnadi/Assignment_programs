using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Project1.Models;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

using System.Web.Security;

namespace Project1.Controllers
{
    public class HomeController : Controller
    {
       public ProjectDBEntities1 db=new ProjectDBEntities1();
        bool Issuccess = false;
        // GET: Home
        public ActionResult Index()//view for home page
        {
            return View();
        }
        public ActionResult UserLogin()//view to display userlogin form
        {
            return View();
        }
        [HttpPost]
        public ActionResult UserLogin(Models.UserModel model)//view for UserLogin verifying the data from database
        {
            using (var contex = new ProjectDBEntities1())
            {
                bool isValid = contex.UserLogins.Any(x => x.UserName == model.UserName && x.Password == model.Password);
                if (isValid)
                {
                    FormsAuthentication.SetAuthCookie(model.UserName, false);
                    return RedirectToAction("ReqLoan", "Home");
                }
                ModelState.AddModelError("", "Invalid Username or Password");

                return View();
            }
        }
        public ActionResult EmpLogin()//view to display emplogin form
        {
            return View();
        }
        [HttpPost]
        public ActionResult EmpLogin(Models.EmpLogin model)//view for EmployeeLogin to verify data from database
        {
            using (var contex = new ProjectDBEntities2())
            {
                bool isValid = contex.EmpLogins.Any(x => x.UserName == model.UserName && x.Password == model.Password);
                if (isValid)
                {
                    FormsAuthentication.SetAuthCookie(model.UserName, false);
                    return RedirectToAction("EmpView", "Home");
                }
                ModelState.AddModelError("", "Invalid Username or Password");

                return View();
            }
        }
        [HttpGet]
        public ActionResult ReqLoan()//view to display Loan Application form
        {
           
            ViewBag.success = Issuccess;
            return View();
        }
        [HttpPost]
        public ActionResult ReqLoan(Models.Loan lm)//view to verify if accountno avilable in database and to display message accordingly
        {
            using (var contex = new ProjectDBEntities1())
            {
                Issuccess = true;
                ViewBag.success = Issuccess;
                TempData["loan"] = lm;
                TempData.Keep();
                bool isValid = contex.Accounts.Any(x => x.AccountID == lm.AccountID);
                if(isValid)
                {
                    if (ViewBag.success)
                    {

                        return Content("<script language='javascript' type='text/javascript'>alert('Your Loan Application has been Submitted.!');" +
                            "window.location='Index';</script>");//alertMessage for loan application submission
                       
                    }



                    return View();
                }
                ModelState.AddModelError("", "You doesnot have Account in this bank or your Accont Number is wrong.Please check again!!");

                return View();
               
            }
                
        }
       
        public ActionResult EmpView(string button)//to display the Loan details of the customer to the admin
        {
            Loan lm = TempData["loan"] as Loan; 
            TempData.Keep();
            TempData["value"] = button;
            TempData.Keep();

            return View(lm);
        }
        
        public ActionResult Status(string button)//To display the Status of the loan to the customer
        {
            if (button == "accept")
            {
                Loan lm = TempData["loan"] as Loan;
                TempData.Keep();
                db.Loans.Add(lm);//if Loan is accepted then Loan details are stored to database
                db.SaveChanges();
                TempData["buttonval"] = "Your Loan Application is Approved!!!";
                TempData.Keep();
            }
            if (button == "reject")
            {
                TempData["buttonval"] = " Sorry!!!Your Loan Application is Rejected";
                TempData.Keep();
            }
           
            return View();
        }
    }
}
