using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelEF.Model;
using PagedList;
using TestUngDung.Models;

namespace TestUngDung.Controllers
{
    public class ProductController : Controller
    {
        ProductDAO dao = new ProductDAO();
        QuachVanToi db = new QuachVanToi();

        public ActionResult Index(int page = 1, int pagesize = 5)
        {
            var model = dao.ListAllPaging(page, pagesize);
            return View(model);
        }
        public void SetViewBag(long? selectid = null)
        {
            ViewBag.CategoryID = new SelectList(db.Category, "ID", "Name", selectid);
        }
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpPost]
        public ActionResult Create(Product acc)
        {
            
            dao.Insert(acc);
            SetViewBag();
            return RedirectToAction("Index", "Product");
        }


        public ActionResult Edit(int id)
        {
            var content = dao.Find(id);
            SetViewBag(content.CategoryID);
            return View(content);
        }
        [HttpPost]
        public ActionResult Edit(Product acc)
        {
            
            var kt = dao.Update(acc);
            SetViewBag();
            return RedirectToAction("Index", "Product");
        }
        public ActionResult Delete(int id)
        {
            var tg = dao.Find(id);
            dao.Delete(tg);
            return RedirectToAction("Index");
        }
    }
}