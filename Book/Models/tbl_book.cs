//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Book.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_book
    {
        public tbl_book()
        {
            this.tbl_cart = new HashSet<tbl_cart>();
            this.tbl_oderdetail = new HashSet<tbl_oderdetail>();
        }
    
        public int book_id { get; set; }
        public string book_name { get; set; }
        public string book_description { get; set; }
        public Nullable<int> book_price { get; set; }
        public Nullable<int> book_fk_auid { get; set; }
        public Nullable<int> book_fk_puid { get; set; }
        public Nullable<int> book_fk_cateid { get; set; }
        public Nullable<int> book_quantity { get; set; }
        public string book_img { get; set; }
        public Nullable<bool> book_status { get; set; }
    
        public virtual tbl_author tbl_author { get; set; }
        public virtual tbl_avtofbook tbl_avtofbook { get; set; }
        public virtual tbl_publisher tbl_publisher { get; set; }
        public virtual tbl_category tbl_category { get; set; }
        public virtual ICollection<tbl_cart> tbl_cart { get; set; }
        public virtual ICollection<tbl_oderdetail> tbl_oderdetail { get; set; }
    }
}
