using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestUngDung.Models;

namespace TestUngDung.Controllers
{
    public class UserPageController : Controller
    {
        UserPageDAO dao = new UserPageDAO();
        public ActionResult Index(int page = 1, int pagesize = 6)
        {
            var model = dao.ListAllPaging(page, pagesize);
            return View(model);
        }
        public ActionResult viewTeLePhone(int id)
        {
            return View(dao.ListTeLePhone(id));
        }
    }
}