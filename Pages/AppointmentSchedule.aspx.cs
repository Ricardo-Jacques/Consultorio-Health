using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Consultorio_Health.Pages.AppointmentSchedule
{
    public partial class AppointmentSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RenderCalendar(year, month);
        }


        //Variáveis
        int year = DateTime.Now.Year;
        int month = DateTime.Now.Month;
        string currentMonth = DateTime.Now.Month.ToString();
        public void RenderCalendar(int year, int month)
        {
            DateTime firstDay = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            monthYear.InnerHtml = currentMonth;

            //Preenche os dias do mês
            int daysInMonth = DateTime.DaysInMonth(year, month);
            for (int i = 1; i <= daysInMonth; i++)
            {
                HtmlGenericControl day = new HtmlGenericControl();
                day.InnerHtml = "div";
                day.InnerText = i.ToString();
                days.Controls.Add(day);
            }
        }
        public void PrevMonth()
        {

        }
    }
}