using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Entity_ReAssignment1.Models;

namespace Entity_ReAssignment1.Controllers
{
    public class Student1Controller : Controller
    {
        Student1 db = new Student1();
        // GET: Student
        public ViewResult Index()
        {
            return View(db.STable.ToList());
        }
        public ActionResult New()
        {
            return View();
        }
    }
}
