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
    
    public partial class tbl_order
    {
        public int order_id { get; set; }
        public Nullable<int> order_fk_cusid { get; set; }
        public Nullable<System.DateTime> order_time { get; set; }
        public Nullable<int> order_stt_fk { get; set; }
    
        public virtual tbl_customer tbl_customer { get; set; }
        public virtual tbl_status tbl_status { get; set; }
        public virtual tbl_orderdetail tbl_orderdetail { get; set; }
        public virtual ICollection<tbl_orderdetail> ProductsOfOrders { get; set; }
    }
}
