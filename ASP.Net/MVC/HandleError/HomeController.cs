using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace handling_Exception_MVC.Controllers
{
  [HandleError]//This is used when we donot handle the error globally
    public class HomeController : Controller
    {
        // GET: Home
        
        public ActionResult Index()
        {
            throw new Exception("this is an Exception");
        }
        public ActionResult About()
        {
            throw new Exception("this is an Exception");
        }
    }
}
