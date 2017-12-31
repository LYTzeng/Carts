using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Carts.Controllers
{
    public class ManageOrderController : Controller
    {
        // GET: ManageOrder
        public ActionResult Index()
        {
            using( Models.ShopEntities db = new Models.ShopEntities() )
            {
                //取得Order_List中所有資料
                var result = (from s in db.ORDER_LIST
                              select s).ToList();

                return View(result);
            }
        }

        public ActionResult Details(int id)
        {
            using (Models.ShopEntities db = new Models.ShopEntities())
            {
                //取得OrderId為傳入id的所有商品列表
                var result = (from s in db.ORDER_ITEM
                              where s.OrderId == id
                              select s).ToList();

                if( result.Count == 0 )
                {   //如果商品數目為零，代表該訂單異常(無商品)，則導回商品列表
                    return RedirectToAction("Index");
                }
                else
                {
                    return View(result);
                }
            }
        }

        public ActionResult SerachByUserName(string UserName)
        {
            //儲存查詢出來的UserId
            string searchUserId = null ;
            using (Models.UserEntities db = new Models.UserEntities())
            {   //查詢目前網站使用者暱稱符合UserName的UserId
                searchUserId = (from s in db.AspNetUsers
                                 where s.UserName == UserName
                                 select s.Id).FirstOrDefault();
            }
            //如果有存在UserId
            if (!String.IsNullOrEmpty(searchUserId))
            {   //則將此UserId的所有訂單找出
                using (Models.ShopEntities db = new Models.ShopEntities())
                {
                    var result = (from s in db.ORDER_LIST
                                  where s.MemberId == Int32.Parse(searchUserId)
                                  select s).ToList();

                    //回傳 結果 至Index()的View
                    return View("Index", result);
                }
            }
            else
            {   //回傳 空結果 至Index()的View
                return View("Index", new List<Models.ORDER_LIST>() );
            }

        }



    }
}