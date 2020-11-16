using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Authentication_MVC.Models;

namespace Authentication_MVC.Controllers
{
    [Authorize]
    public class Employee2Controller : Controller
    {
        private EmployeeDBEntities db = new EmployeeDBEntities();

        // GET: Employee2
        public ActionResult Index()
        {
            return View(db.Employee2.ToList());
        }

        // GET: Employee2/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee2 employee2 = db.Employee2.Find(id);
            if (employee2 == null)
            {
                return HttpNotFound();
            }
            return View(employee2);
        }

        // GET: Employee2/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Employee2/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Designation,Salary")] Employee2 employee2)
        {
            if (ModelState.IsValid)
            {
                db.Employee2.Add(employee2);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(employee2);
        }

        // GET: Employee2/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee2 employee2 = db.Employee2.Find(id);
            if (employee2 == null)
            {
                return HttpNotFound();
            }
            return View(employee2);
        }

        // POST: Employee2/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Designation,Salary")] Employee2 employee2)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employee2).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(employee2);
        }

        // GET: Employee2/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee2 employee2 = db.Employee2.Find(id);
            if (employee2 == null)
            {
                return HttpNotFound();
            }
            return View(employee2);
        }

        // POST: Employee2/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Employee2 employee2 = db.Employee2.Find(id);
            db.Employee2.Remove(employee2);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
