//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MyFirstWebsite
{
    using System;
    using System.Collections.Generic;
    
    public partial class ReferenceBookCopy
    {
        public int RefBookNumID { get; set; }
        public int ShelfNumber { get; set; }
        public string Condition { get; set; }
        public int RefBookID { get; set; }
    
        public virtual ReferenceBook ReferenceBook { get; set; }
    }
}
