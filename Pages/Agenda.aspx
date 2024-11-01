<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="Consultorio_Health.Pages.AppointmentSchedule.Agenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="/Styles/appointmentSchedule.css" asp-append-version="true" />
    <link rel="stylesheet" href="/Styles/agenda.css" asp-append-version="true" />
</head>
<body>
    <h2 class="title">Confirme seus dados</h2>
    <nav class="previous-page" style="margin: 20px 0px 10px 30px;">
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0" />
        </svg>
        <a asp-controller="AppointmentSchedule" asp-action="Index">Voltar</a>
    </nav>

    <section class="agenda">
        <div class="column">
            <div class="form">
                <div>
                    <label>Nome:</label>
                    <input class="form-input" type="name" name="name" value="" />
                </div>
                <div>
                    <label>CPF:</label>
                    <input class="form-input" type="text" name="name" value="" />
                </div>
                <div>
                    <label>E-mail</label>
                    <input class="form-input" type="email" name="name" value="" />
                </div>
                <div>
                    <label>Telefone:</label>
                    <input class="form-input" type="number" name="name" value="" />
                </div>
            </div>
        </div>
        <div class="column">
            <div>
                <div class="consultation-info">
                    <p>Consulta</p>
                    <span id="selected-day"></span>
                    <!--13 de junho as 09:00-->
                    <span id="selected-month"></span>
                    <span id="selected-time"></span>
                    <span id="consultation-cost"></span>
                </div>
            </div>
        </div>
    </section>
    <div style="display: flex; justify-content: center; width: 100%;">
        <input class="button submit" type="submit" name="enviar" value="Marcar consulta" />
    </div>
</body>
</html>
