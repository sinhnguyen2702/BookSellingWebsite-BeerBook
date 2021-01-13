﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Core.Objects;
    using System.Data.Entity.Infrastructure;
    
    public partial class dbbookEntities : DbContext
    {
        public dbbookEntities()
            : base("name=dbbookEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<tbl_account> tbl_account { get; set; }
        public DbSet<tbl_avtofbook> tbl_avtofbook { get; set; }
        public DbSet<tbl_avtofcus> tbl_avtofcus { get; set; }
        public DbSet<tbl_cart> tbl_cart { get; set; }
        public DbSet<tbl_category> tbl_category { get; set; }
        public DbSet<tbl_customer> tbl_customer { get; set; }
        public DbSet<tbl_role> tbl_role { get; set; }
        public DbSet<tbl_status> tbl_status { get; set; }
        public DbSet<tbl_orderdetail> tbl_orderdetail { get; set; }
        public DbSet<tbl_order> tbl_order { get; set; }
        public DbSet<tbl_publisher> tbl_publisher { get; set; }
        public DbSet<tbl_author> tbl_author { get; set; }
        public DbSet<tbl_book> tbl_book { get; set; }
        public virtual int CancelAnOrder(Nullable<int> orderID, Nullable<int> stateCanceled, ObjectParameter isSuccess)
        {
            var orderIDParameter = orderID.HasValue ?
                new ObjectParameter("orderID", orderID) :
                new ObjectParameter("orderID", typeof(int));

            var stateCanceledParameter = stateCanceled.HasValue ?
                new ObjectParameter("stateCanceled", stateCanceled) :
                new ObjectParameter("stateCanceled", typeof(int));

            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CancelAnOrder", orderIDParameter, stateCanceledParameter, isSuccess);
        }
        public virtual int DeleteAnOrder(Nullable<int> orderID, Nullable<int> stateCanceled, ObjectParameter isSuccess)
        {
            var orderIDParameter = orderID.HasValue ?
                new ObjectParameter("orderID", orderID) :
                new ObjectParameter("orderID", typeof(int));

            var stateCanceledParameter = stateCanceled.HasValue ?
                new ObjectParameter("stateCanceled", stateCanceled) :
                new ObjectParameter("stateCanceled", typeof(int));

            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeleteAnOrder", orderIDParameter, stateCanceledParameter, isSuccess);
        }
        public virtual ObjectResult<Nullable<int>> SPGetTotalOrderCost(Nullable<int> orderID)
        {
            var orderIDParameter = orderID.HasValue ?
                new ObjectParameter("orderID", orderID) :
                new ObjectParameter("orderID", typeof(int));

            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("SPGetTotalOrderCost", orderIDParameter);
        }
    }
}
