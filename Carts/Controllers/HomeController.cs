using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace Carts.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using( Models.ShopEntities db = new Models.ShopEntities() )
            {
                var result = (from s in db.CLOTHES select s).ToList();
                return View(result);
            }
        }

        public ActionResult Details(int id)
        {
            using (Models.ShopEntities db = new Models.ShopEntities())
            {
                var result = (from s in db.CLOTHES 
                              where s.Id == id
                              select s).FirstOrDefault();

                if (result == default(Models.CLOTHES))
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    return View(result);
                }
            }
        }

        [HttpPost]  //限定使用POST
        [Authorize] //登入會員才可留言
        public ActionResult AddComment(int id, string description)
        {
            //取得目前登入使用者Id
            var memberId = HttpContext.User.Identity.GetUserId();

            var currentDateTime = DateTime.Now;

            var comment = new Models.COMMENTs() { 
                Id = id,
                Description = description,
                MemberId = Int32.Parse(memberId),
                Date_Time = currentDateTime
            };

            using (Models.ShopEntities db = new Models.ShopEntities())
            {
                db.COMMENTs.Add(comment);
                db.SaveChanges();
            }

            return RedirectToAction("Details", new { id = id });
        }





        public ActionResult Index2()
        {
            return Content(
                "<html><body><h1>這是一段訊息</h1></body></html>"
                );
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}