<%@ WebHandler Language="C#" Class="CalcHandler" %>

using System;
using System.Web;

// Äàííûé îáðàáîò÷èê èñïîëüçóåòñÿ â äîìàøíåì çàäàíèè.

public class CalcHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        try
        {                
            int a = Convert.ToInt32(context.Request.Form["a"]);
            int b = Convert.ToInt32(context.Request.Form["b"]);

            context.Response.Write(a + b);
        }
        catch
        {
            context.Response.Write("Îøèáêà, handler íå îáðàáîòàë çàïðîñ.");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
