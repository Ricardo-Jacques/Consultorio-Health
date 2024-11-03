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
            if (!IsPostBack)
            {
                ViewState["currentYear"] = DateTime.Now.Year;
                ViewState["currentMonth"] = DateTime.Now.Month;
            }

            int currentYear = (int)ViewState["currentYear"];
            int currentMonth = (int)ViewState["currentMonth"];

            RenderCalendar(currentYear, currentMonth);
        }

        public void RenderCalendar(int currentYear, int currentMonth)
        {
            DateTime firstDay = new DateTime(currentYear, currentMonth, 1);
            monthYear.InnerHtml = $"{firstDay.ToString("MMMM")} {currentYear}";

            days.Controls.Clear();

            // Preenche os dias do mês
            int daysInMonth = DateTime.DaysInMonth(currentYear, currentMonth);
            for (int i = 1; i <= daysInMonth; i++)
            {
                HtmlGenericControl day = new HtmlGenericControl("div");
                day.InnerText = i.ToString();
                days.Controls.Add(day);
            }
        }

        protected void NextMonth(object sender, EventArgs e)
        {
            int currentYear = (int)ViewState["currentYear"];
            int currentMonth = (int)ViewState["currentMonth"];

            // Avança o mês
            currentMonth++;
            if (currentMonth > 12)
            {
                currentMonth = 1;
                currentYear++;
            }

            ViewState["currentYear"] = currentYear;
            ViewState["currentMonth"] = currentMonth;

            RenderCalendar(currentYear, currentMonth);
        }

        protected void PrevMonth(object sender, EventArgs e)
        {
            int currentYear = (int)ViewState["currentYear"];
            int currentMonth = (int)ViewState["currentMonth"];

            // Retrocede o mês
            currentMonth--;
            if (currentMonth < 1)
            {
                currentMonth = 12;
                currentYear--;
            }

            ViewState["currentYear"] = currentYear;
            ViewState["currentMonth"] = currentMonth;

            RenderCalendar(currentYear, currentMonth);
        }
    }
}
