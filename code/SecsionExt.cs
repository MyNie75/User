using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;


namespace User.code
{
    public static class SecsionExt
    {
        public static void SetCurrentUser(this HttpSessionState session, tb_User usr)
        {

            session["currentUser"] = usr;
        }
        public static tb_User GetCurrentUser(this HttpSessionState session)
        {
            return session["currentUser"] as tb_User;
        }
    }
}
   
