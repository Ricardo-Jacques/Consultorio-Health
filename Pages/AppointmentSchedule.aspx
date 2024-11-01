<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentSchedule.aspx.cs" Inherits="Consultorio_Health.Pages.AppointmentSchedule.AppointmentSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Marcar Consulta</title>
    <link rel="stylesheet" href="/Styles/appointmentSchedule.css" asp-append-version="true" />
</head>
<body>

    <nav class="previous-page">
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0" />
        </svg>
        <a asp-controller="Home" asp-action="Index">Voltar</a>
    </nav>
    <section class="consultation">
        <div class="column">
            <h2 class="consultation-titles">Datas disponíveis</h2>
            <div class="calendar" style="width: 300px;">
                <div class="month">
                    <button onclick="prevMonth()">❮</button>
                    <h2 id="monthYear"></h2>
                    <button onclick="nextMonth()">❯</button>
                </div>
                <div class="weekdays">
                    <div>Dom</div>
                    <div>Seg</div>
                    <div>Ter</div>
                    <div>Qua</div>
                    <div>Qui</div>
                    <div>Sex</div>
                    <div>Sab</div>
                </div>
                <div class="days" id="days"></div>
            </div>
        </div>
        <div class="column">
            <h2 class="consultation-titles">Horários disponíveis</h2>
            <div class="schedules">
                <button class="schedules-button">08:00</button>
                <button class="schedules-button">09:00</button>
                <button class="schedules-button">10:00</button>
                <button class="schedules-button">11:00</button>
                <button class="schedules-button">13:30</button>
                <button class="schedules-button">14:30</button>
                <button class="schedules-button">15:30</button>
                <button class="schedules-button">16:30</button>
            </div>
        </div>
        <div class="column">
            <h2 class="consultation-titles">Informações da consulta</h2>
            <div class="consultation-info">
                <p>Consulta</p>
                <span id="selected-day"></span>
                <!--13 de junho as 09:00-->
                <span id="selected-month"></span>
                <span id="selected-time"></span>
                <span id="consultation-cost"></span>
            </div>
        </div>
    </section>
    <div style="display: flex; justify-content: center; width: 100%;">
        <button class="button next-page"><a asp-controller="AppointmentSchedule" asp-action="Agenda">Próximo</a></button>
    </div>
</body>
</html>
