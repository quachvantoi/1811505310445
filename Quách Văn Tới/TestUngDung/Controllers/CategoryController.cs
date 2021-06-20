using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestUngDung.Models;

namespace TestUngDung.Controllers
{
    public class CategoryController : Controller
    {
        CategoryDAO dao = new CategoryDAO();
        // GET: Category
        public ActionResult Index()
        {
            return View(dao.getCategory());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Category acc)
        {
            dao.Insert(acc);
            return RedirectToAction("Index", "Category");
        }

        public ActionResult Edit(int id)
        {   
            return View(dao.Find(id));
        }
        [HttpPost]
        public ActionResult Edit(Category acc)
        {
            var kt = dao.Update(acc);
            return RedirectToAction("Index", "Category");
        }
        public ActionResult Delete(int id)
        {
            var tg = dao.Find(id);
            dao.Delete(tg);
            return RedirectToAction("Index");
        }
    }
}