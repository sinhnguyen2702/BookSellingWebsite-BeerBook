
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
    
public partial class tbl_author
{

    public tbl_author()
    {

        this.tbl_book = new HashSet<tbl_book>();

    }


    public int au_id { get; set; }

    public string au_name { get; set; }



    public virtual ICollection<tbl_book> tbl_book { get; set; }

}

}
