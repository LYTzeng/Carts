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
    
    public partial class CLOTHES
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CLOTHES()
        {
            this.COMMENTs = new HashSet<COMMENTs>();
            this.ORDER_ITEM = new HashSet<ORDER_ITEM>();
            this.STRAGE_LIST = new HashSet<STORAGE_LIST>();
            this.TRACE_LIST = new HashSet<TRACE_LIST>();
        }
    
        public int Id { get; set; }
        public int Price { get; set; }
        public int Quantity { get; set; }
        public int ClickCount { get; set; }
        public int State { get; set; }
        public Nullable<int> Cost_per_unit { get; set; }
        public int Barcode { get; set; }
        public string Tag_name { get; set; }
        public string Brand_name { get; set; }
        public string Size { get; set; }
        public string Manufacture_name { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }
        public string Style { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COMMENTs> COMMENTs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDER_ITEM> ORDER_ITEM { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<STORAGE_LIST> STRAGE_LIST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TRACE_LIST> TRACE_LIST { get; set; }
    }
}
