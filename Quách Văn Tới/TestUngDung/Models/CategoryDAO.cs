using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ModelEF.Model;

namespace TestUngDung.Models
{
    public class CategoryDAO
    {
        QuachVanToi mydb = new QuachVanToi();
        public List<Category> getCategory()
        {
            return mydb.Category.ToList();
        }
        public void Insert(Category user)
        {
            mydb.Category.Add(user);
            mydb.SaveChanges();
        }
        public Category Find(int id)
        {
            return mydb.Category.Find(id);
        }
        public bool Update(Category pr)
        {

            try
            {
                var user = mydb.Category.Find(pr.ID);
                user.ID = pr.ID;
                user.Name = pr.Name;
                user.Description = pr.Description;

                mydb.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Delete(Category pr)
        {
            try
            {

                mydb.Category.Remove(pr);
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