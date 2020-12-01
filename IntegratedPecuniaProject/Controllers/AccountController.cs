using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FinalProject.Models;
namespace FinalProject.Controllers
{
    public class AccountController : Controller
    {
         CASESTUDY1Entities cd = new CASESTUDY1Entities();
        // GET: Home
        /***********Home***********************/
        public ActionResult Home()
        {
            return View();
        }
        /****************Home1*****************/
        public ActionResult Next()
        {
            return View();
        }

        /****************Create Account*****************/

        [HttpGet]
        public ActionResult Register(int id = 0)//get the data from table
        {
            Table1 usermodel = new Table1();//create instance for Model table

            return View(usermodel);//View data in the table
        }
        [HttpPost]
        public ActionResult Register(Table1 Rg)
        {

            using (CASESTUDY1Entities DB = new CASESTUDY1Entities()) //create an instance for table name to adding the data in the table
            {

                DB.Table1.Add(Rg);//Add the data in table
                DB.SaveChanges();//save the data
            }
            ModelState.Clear();
            ViewBag.SuccessMessage = "Account created successfully!!!";
            return View("Register", new Table1());
        }

        /****************Login with ur credentials*****************/
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(Table1 Fg)//It is for checking
        {

            var checkdetails = cd.Table1.Where(x => x.Account_Holdername == Fg.Account_Holdername && x.Password == Fg.Password).FirstOrDefault();//And operation
            if (checkdetails != null)
            {
                //ViewBag.msg = "Login sucessfully!!!!";
                return RedirectToAction("Next");
            }
            else

                ViewBag.msg = "Credentials are wrong";
            return View();
        }

        /****************Edit*****************/
        public ActionResult Edit(int id)
        {
            var data = cd.Table1.SqlQuery("select * from Table1 where Account_Number=@p0", id).SingleOrDefault();
            return View(data);
        }
        [HttpPost]
        public ActionResult Edit(int id, Table1 d1)
        {
            List<object> lst1 = new List<object>();
            lst1.Add(d1.Account_Holdername);
            lst1.Add(d1.Email);

            lst1.Add(d1.Password);
            lst1.Add(d1.Confirm_Password);
            lst1.Add(d1.PAN);
            lst1.Add(d1.Aadhaar);
            lst1.Add(d1.Address);
            lst1.Add(d1.Account_Number);
            object[] items = lst1.ToArray();
            int Output = cd.Database.ExecuteSqlCommand("update Table1 set Account_Holdername=@p0,Email=@p1,Password=@p2,Confirm_Password=@p3,PAN=@p4,Aadhaar=@p5,Address=@p6 where Account_Number=@p7", items);
            if (Output > 0)

            {
                ViewBag.msg = "Your AccountNumber " + d1.Account_Number + "Updated Succesfully";
            }
            return View();
        }

        /****************delete*****************/
        public ActionResult Delete(int id)
        {
            var data = cd.Table1.SqlQuery("select * from Table1 where Account_Number=@p0", id).SingleOrDefault();

            return View(data);
        }

        [HttpPost]
        public ActionResult Delete(int id, Table1 d1)
        {
            var data = cd.Database.ExecuteSqlCommand("delete from Table1 where Account_Number=@p0", id);
            if (data != 0)
            {
                return RedirectToAction("Index");
            }
            return View();
        }

        /****************Update individual details*****************/
        public ActionResult Updatedetails()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Updatedetails(Table1 m1)
        {

            using (CASESTUDY1Entities cd = new CASESTUDY1Entities())
            {
                cd.Table1.Add(m1);
                if (m1.Account_Number == 100000001)
                {
                    return RedirectToAction("account1");
                }
                else if (m1.Account_Number == 100000002)
                {
                    return RedirectToAction("account2");
                }
                else if (m1.Account_Number == 100000003)
                {
                    return RedirectToAction("account3");
                }
                else if (m1.Account_Number == 100000010)
                {
                    return RedirectToAction("account4");
                }
                else if (m1.Account_Number == 100000011)
                {
                    return RedirectToAction("account6");
                }
                else if (m1.Account_Number == 100000012)
                {
                    return RedirectToAction("account7");
                }
                else if (m1.Account_Number == 100000013)
                {
                    return RedirectToAction("account8");
                }
                else if (m1.Account_Number == 100000014)
                {
                    return RedirectToAction("account9");
                }
                else if (m1.Account_Number == 100000015)
                {
                    return RedirectToAction("account10");
                }

                else
                    return View();
            }
        }

        /****************Customers Data*****************/
        public ActionResult account1()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000001").ToList();
            return View(dat1);
        }
        public ActionResult account2()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000002").ToList();
            return View(dat1);
        }
        public ActionResult account3()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000003").ToList();
            return View(dat1);
        }
        public ActionResult account4()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000010").ToList();
            return View(dat1);
        }
        public ActionResult account5()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000011").ToList();
            return View(dat1);
        }
        public ActionResult account6()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000012").ToList();
            return View(dat1);
        }
        public ActionResult account7()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000013").ToList();
            return View(dat1);
        }
        public ActionResult account8()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000014").ToList();
            return View(dat1);
        }
        public ActionResult account9()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000015").ToList();
            return View(dat1);
        }
        public ActionResult account10()
        {
            var dat1 = cd.Table1.SqlQuery("select * from Table1 where Account_Number = 100000016").ToList();
            return View(dat1);
        }

    }
}