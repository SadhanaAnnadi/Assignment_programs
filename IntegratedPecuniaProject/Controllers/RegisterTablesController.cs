using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FinalProject.Models;

namespace FinalProject.Controllers
{
    public class RegisterTablesController : Controller
    {
        private PecuniaBankEntities db = new PecuniaBankEntities();

        // GET: RegisterTables
        public ActionResult Index()
        {
            return View(db.RegisterTables.ToList());
        }

        // GET: RegisterTables/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RegisterTable registerTable = db.RegisterTables.Find(id);
            if (registerTable == null)
            {
                return HttpNotFound();
            }
            return View(registerTable);
        }

        // GET: RegisterTables/Create
        public ActionResult Create()
        {


            return View();

        }

        // POST: RegisterTables/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Account_Number,Account_Holdername,Email_id,Password,Confirm_Password,Mobile_Number,Address")] RegisterTable registerTable)
        {
            if (ModelState.IsValid)
            {
                db.RegisterTables.Add(registerTable);
                db.SaveChanges();
                TempData["SuccessMessage"] = "Account created Successfully";
                return RedirectToAction("Index");
            }




            return View(registerTable);
        }

        // GET: RegisterTables/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RegisterTable registerTable = db.RegisterTables.Find(id);
            if (registerTable == null)
            {
                return HttpNotFound();
            }
            return View(registerTable);
        }

        // POST: RegisterTables/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Account_Number,Account_Holdername,Email_id,Password,Confirm_Password,Mobile_Number,Address")] RegisterTable registerTable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(registerTable).State = EntityState.Modified;
                db.SaveChanges();
                TempData["SuccessMessage"] = "updated Successfully";
                return RedirectToAction("Index");
            }
            return View(registerTable);
        }

        // GET: RegisterTables/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RegisterTable registerTable = db.RegisterTables.Find(id);
            if (registerTable == null)
            {
                return HttpNotFound();
            }
            return View(registerTable);
        }

        // POST: RegisterTables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            RegisterTable registerTable = db.RegisterTables.Find(id);
            db.RegisterTables.Remove(registerTable);

            db.SaveChanges();
            //ViewBag.Message = "Are you sure to delete this record";
            //return Content("<script language='javascript' type='text/javascript'>('Are you sure to delete this record.');" +
            //    "window.location='Index';</script>");

            TempData["SuccessMessage"] = "Deleted Successfully";
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
