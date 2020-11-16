using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_DBFirst_approach.Models;
namespace MVC_DBFirst_approach.Controllers
{
    public class EmployeeController : Controller
    {
        EmployeeEntities1 db = new EmployeeEntities1();
        // GET: Employee
        public ViewResult Index()
        {
            return View(db.EmployeeTables.ToList());
        }
        public ActionResult Create()
        {
            return View();
        }
    }
}
