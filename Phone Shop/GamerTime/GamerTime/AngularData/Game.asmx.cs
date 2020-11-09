using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace GamerTime.AngularData
{
    /// <summary>
    /// Summary description for Game
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Game : System.Web.Services.WebService
    {

        [WebMethod]
        public void Get_Games()
        {
            DataSet res = sqlConnection.getFromDB("select * from game");
            string data = JsonConvert.SerializeObject(res.Tables[0]);
            Context.Response.Write(data);
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public void Get_Game(string id)
        {
            DataSet res = sqlConnection.getFromDB("select * from game where Id=" + id);
            string data = JsonConvert.SerializeObject(res.Tables[0]);
            Context.Response.Write(data);
        }
    }
}
