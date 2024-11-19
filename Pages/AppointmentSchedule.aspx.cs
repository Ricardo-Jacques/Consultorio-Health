using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
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
                Session["currentYear"] = DateTime.Now.Year;
                Session["currentMonth"] = DateTime.Now.Month;
            }

            int currentYear = (int)Session["currentYear"];
            int currentMonth = (int)Session["currentMonth"];

            RenderCalendar(currentYear, currentMonth);
        }

        public void RenderCalendar(int currentYear, int currentMonth)
        {
            DateTime firstDay = new DateTime(currentYear, currentMonth, 1);
            SelectedMonth.InnerHtml = $"{firstDay.ToString("MMMM")}";
            SelectedYear.InnerHtml = $"{currentYear}";

            days.Controls.Clear();

            // Determina o primeiro dia da semana (0 = domingo, 1 = segunda-feira, etc.)
            int firstDayOfWeek = (int)firstDay.DayOfWeek;

            // Adiciona placeholders para alinhar o primeiro dia do mês
            for (int i = 0; i < firstDayOfWeek; i++)
            {
                Label placeholder = new Label();
                placeholder.CssClass = "day-placeholder"; // Use uma classe CSS para estilizar
                placeholder.Text = ""; // Placeholder vazio
                days.Controls.Add(placeholder);
            }

            // Preenche os dias do mês
            int daysInMonth = DateTime.DaysInMonth(currentYear, currentMonth);
            for (int i = 1; i <= daysInMonth; i++)
            {
                LinkButton day = new LinkButton();
                day.CssClass = "day";
                day.Text = i.ToString();
                day.CommandArgument = currentMonth.ToString();  // Armazena o mês no CommandArgument
                day.Click += new EventHandler(SelectDate);

                days.Controls.Add(day);
            }

        }

        //Variáveis
        string _selectedDay;
        string _selectedTime;
        string monthString;
        string _SelectedYear;

        public void SelectDate(object sender, EventArgs e)
        {
            // Obtenha o botão que disparou o evento
            LinkButton dayButton = (LinkButton)sender;

            // Obtenha o valor do texto e do CommandArgument
            _selectedDay = dayButton.Text;
            int _selectedMonth = int.Parse(dayButton.CommandArgument);

            if (_selectedMonth == 0)
            {
                monthString = "teste";
            }
            else if (_selectedMonth == 1)
            {
                monthString = "janeiro";
            }
            else if (_selectedMonth == 2)
            {
                monthString = "fevereiro";
            }
            else if (_selectedMonth == 3)
            {
                monthString = "março";
            }
            else if (_selectedMonth == 4)
            {
                monthString = "abril";
            }
            else if (_selectedMonth == 5)
            {
                monthString = "maio";
            }
            else if (_selectedMonth == 6)
            {
                monthString = "junho";
            }
            else if (_selectedMonth == 7)
            {
                monthString = "julho";
            }
            else if (_selectedMonth == 8)
            {
                monthString = "agosto";
            }
            else if (_selectedMonth == 9)
            {
                monthString = "setembro";
            }
            else if (_selectedMonth == 10)
            {
                monthString = "outubro";
            }
            else if (_selectedMonth == 11)
            {
                monthString = "novembro";
            }
            else if (_selectedMonth == 12)
            {
                monthString = "dezembro";
            }
            else
            {
                monthString = "mês indisponível!";
            }

            // Atualize os controles com os valores selecionados
            consultationDay.InnerText = $"{_selectedDay} de {monthString} às ";
            consultationCost.InnerText = "R$ 80,00";
            Session["selectedDay"] = _selectedDay;
            Session["monthString"] = monthString;
            Session["consultationCost"] = "R$ 80,00";
            DateTime selectedDate = new DateTime((int)Session["currentYear"], _selectedMonth, int.Parse(_selectedDay));
            Session["selectedDate"] = selectedDate;
        }

        public void SelectHour(object sender, EventArgs e)
        {
            // Obtenha o botão que disparou o evento
            LinkButton hourButton = (LinkButton)sender;

            _selectedTime = hourButton.Text.Trim();
            Session["selectedTime"] = _selectedTime;

            // Atualiza a div com a data e o horário completo
            consultationDay.InnerText = $"{Session["selectedDay"]} de {Session["monthString"]} às {_selectedTime}";
        }


        protected void NextMonth(object sender, EventArgs e)
        {
            int currentYear = (int)Session["currentYear"];
            int currentMonth = (int)Session["currentMonth"];

            // Avança o mês
            currentMonth++;
            if (currentMonth > 12)
            {
                currentMonth = 1;
                currentYear++;
            }

            Session["currentYear"] = currentYear;
            Session["currentMonth"] = currentMonth;

            RenderCalendar(currentYear, currentMonth);
        }

        protected void PrevMonth(object sender, EventArgs e)
        {
            int currentYear = (int)Session["currentYear"];
            int currentMonth = (int)Session["currentMonth"];

            // Retrocede o mês
            currentMonth--;
            if (currentMonth < 1)
            {
                currentMonth = 12;
                currentYear--;
            }

            Session["currentYear"] = currentYear;
            Session["currentMonth"] = currentMonth;

            RenderCalendar(currentYear, currentMonth);
        }

        protected void btnRedirect_Home(object sender, EventArgs e)
        {
            // Redireciona o usuário para outra página
            Response.Redirect("Default.aspx");
        }

        protected void btnRedirect_Agenda(object sender, EventArgs e)
        {
            // Redireciona o usuário para outra página
            Response.Redirect("Agenda.aspx");
        }
    }
}
