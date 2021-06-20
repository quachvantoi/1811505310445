using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ModelEF.Model;
using PagedList;

namespace TestUngDung.Models
{
    public class UserPageDAO
    {
        QuachVanToi mydb = new QuachVanToi();
        public IEnumerable<Product> ListAllPaging(int page, int pagesize)
        {
            return mydb.Product.OrderBy(x => x.Quantity).ThenByDescending(x => x.UnitCost).ToPagedList(page, pagesize);
        }
        public IEnumerable<Product> ListTeLePhone(int id)
        {
            return mydb.Product.OrderBy(x => x.Quantity).ThenByDescending(x => x.UnitCost).Where(x => x.CategoryID == id).ToList();
        }
    }
}