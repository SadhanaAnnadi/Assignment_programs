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
    public class TranscationsController : Controller
    {
        private MvcCudEntities db = new MvcCudEntities();

        // GET: Transcations
        public ActionResult Index()
        {
            return View(db.Transcations.ToList());
        }

        // GET: Transcations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Transcation transcation = db.Transcations.Find(id);
            if (transcation == null)
            {
                return HttpNotFound();
            }
            return View(transcation);
        }

        // GET: Transcations/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Transcations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,PayeeAccountNo,BenificiaryAccNo,ChequeNo,PayeeName,Amount,BankName,IFSC")] Transcation transcation)
        {
            if (ModelState.IsValid)
            {
                db.Transcations.Add(transcation);
                db.SaveChanges();
                return Content("<script language='javascript' type='text/javascript'>alert('Your Transcation created Successfully.!');" +
                           "window.location='Index';</script>");
                
            }

            return View(transcation);
        }

        // GET: Transcations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Transcation transcation = db.Transcations.Find(id);
            if (transcation == null)
            {
                return HttpNotFound();
            }
            return View(transcation);
        }

        // POST: Transcations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,PayeeAccountNo,BenificiaryAccNo,ChequeNo,PayeeName,Amount,BankName,IFSC")] Transcation transcation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(transcation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(transcation);
        }

        // GET: Transcations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Transcation transcation = db.Transcations.Find(id);
            if (transcation == null)
            {
                return HttpNotFound();
            }
            return View(transcation);
        }

        // POST: Transcations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Transcation transcation = db.Transcations.Find(id);
            db.Transcations.Remove(transcation);
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
