//------------------------------------------------------------------------------
// <auto-generated>
//     這個程式碼是由範本產生。
//
//     對這個檔案進行手動變更可能導致您的應用程式產生未預期的行為。
//     如果重新產生程式碼，將會覆寫對這個檔案的手動變更。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Carts.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class STORAGE_LIST
    {
        public int MemberId { get; set; }
        public int ClothesId { get; set; }
        public System.DateTime Date_Time { get; set; }
        public int Quantity { get; set; }
        public int Cost { get; set; }
    
        public virtual CLOTHES CLOTHES { get; set; }
        public virtual MEMBERs MEMBERs { get; set; }
    }
}
