using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelEF.Model;
using TestUngDung.Models;
using TestUngDung.Common;

namespace TestUngDung.Controllers
{
    public class UserController : Controller
    {
        Userdao dao = new Userdao();
        // GET: User
        public ActionResult Index()
        {
            return View(dao.laydanhsachUser());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(UserAccount acc)
        {
            dao.Insert(acc);
            return RedirectToAction("Index", "User");
        }

        public ActionResult Edit(int id)
        {
            return View(dao.Find(id));
        }
        [HttpPost]
        public ActionResult Edit(UserAccount acc)
        {
            var kt = dao.Update(acc);
            return RedirectToAction("Index", "User");
        }
        public ActionResult Delete(int id)
        {
            var tg = dao.Find(id);
            dao.Delete(tg);
            return RedirectToAction("Index");
        }
        
        
    }
}