﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consultorio_Health.Pages.AppointmentSchedule
{
    public partial class Agenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRedirecionar_Appointment(object sender, EventArgs e)
        {
            // Redireciona o usuário para outra página
            Response.Redirect("AppointmentSchedule.aspx");
        }
    }
}