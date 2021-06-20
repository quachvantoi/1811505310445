using ModelEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestUngDung.Models
{
    public class ProductDAO
    {

        QuachVanToi mydb = null;
        public ProductDAO()
        {
            mydb = new QuachVanToi();
        }
        public IEnumerable<Product> ListAllPaging(int page, int pagesize)
        {
            return mydb.Product.OrderBy(x => x.Quantity).ThenByDescending(x => x.UnitCost).ToPagedList(page, pagesize);
        }

        public List<Product> laydanhsachSanPham()
        {
            return mydb.Product.ToList();
        }
        public void Insert(Product user)
        {
            mydb.Product.Add(user);
            mydb.SaveChanges();
        }
        public Product Find(int id)
        {
            return mydb.Product.Find(id);
        }
        public bool Update(Product pr)
        {

            try
            {
                var user = mydb.Product.Find(pr.ID);
                user.CategoryID = pr.CategoryID;
                user.Name = pr.Name;
                user.UnitCost = pr.UnitCost;
                user.Quantity = pr.Quantity;
                user.Description = pr.Description;
                user.Status = pr.Status;

                mydb.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool Delete(Product pr)
        {
            try
            {

                mydb.Product.Remove(pr);
                mydb.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}