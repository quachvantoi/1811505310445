using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ModelEF.Model;

namespace TestUngDung.Models
{
    public class Userdao
    {
        QuachVanToi mydb = new QuachVanToi();

        public int Login(string user, string pass)
        {
            var result = mydb.UserAccount.SingleOrDefault(x => x.UserName.Contains(user) && x.Password.Contains(pass));
            if (result == null)
            {
                return 0;
            }
            else
            {
                return 1;
            }
        }
        public List<UserAccount> laydanhsachUser()
        {
            return mydb.UserAccount.ToList();
        }
        public UserAccount Find(int id)
        {
            return mydb.UserAccount.Find(id);
        }
        public void Insert(UserAccount user)
        {
            mydb.UserAccount.Add(user);
            mydb.SaveChanges();
        }
        public bool Update(UserAccount entityUser)
        {

            try
            {
                var user = mydb.UserAccount.Find(entityUser.ID);
                user.UserName = entityUser.UserName;
                user.Password = entityUser.Password;
                user.Status = entityUser.Status;
                mydb.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Delete(UserAccount entityUser)
        {
            try
            {
                
                mydb.UserAccount.Remove(entityUser);
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