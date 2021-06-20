using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestUngDung.Models
{
    public class LoginDAO
    {
        QuachVanToi mydb = new QuachVanToi();
        public int Login(string user, string pass)
        {
            var result = mydb.UserAccount.SingleOrDefault(x => x.UserName.Contains(user) && x.Password.Contains(pass));
            if (result == null)
            {
                return -1;
            }
            else
            {
                if(result.Status == true)
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
        }
    }
}