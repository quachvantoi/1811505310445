using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelEF.Model;
using TestUngDung.Common;
using TestUngDung.Models;

namespace TestUngDung.Controllers
{    
    public class LoginController : Controller
    {
        LoginDAO dao = new LoginDAO();
        public ActionResult Index()
        {
            ViewBag.login = "Đăng Nhập";
            return View();
        }
        public ActionResult loginfalse()
        {
            ViewBag.login = "Đăng Nhập Thất Bại";
            return View("Index");
        }
        [HttpPost]
        public ActionResult KiemTraDangNhap(UserAccount acc)
        {
            var result = dao.Login(acc.UserName, acc.Password);
            if (result == 1)
            {
                Session.Add(CommonConstants.USER_SESSION, acc.UserName);
                return RedirectToAction("Index", "User");
            }
            else if(result == 0)
            {
                return RedirectToAction("Index", "UserPage");
            }
            else
            {
                return RedirectToAction("loginfalse");
            }

        }
    }
}