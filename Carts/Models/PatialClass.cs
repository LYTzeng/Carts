using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Carts.Models
{
    public class PatialClass
    {
    }

    //定義Models.Order的部分類別
    public partial class ORDER_LIST
    {
        //取得訂單中的 使用者暱稱
        public string GetUrderName()
        {
            //使用Order類別中的UserId到AspNetUsers資料表中搜尋出UserName
            using( Models.ShopEntities db = new ShopEntities() )
            {
                var result = (from s in db.MEMBERs
                              where s.Id == this.MemberId
                              select s.LName + " " + s.FName).FirstOrDefault();

                //回傳找到的UserName
                return result;
            }
        }

    }
}

