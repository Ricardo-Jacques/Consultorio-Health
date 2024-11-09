<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentSchedule.aspx.cs" Inherits="Consultorio_Health.Pages.AppointmentSchedule.AppointmentSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Marcar Consulta</title>
    <link rel="stylesheet" href="/Styles/global.css" asp-append-version="true" />
    <link rel="stylesheet" href="/Styles/appointmentSchedule.css" asp-append-version="true" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="previous-page">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0" />
            </svg>
            <asp:LinkButton ID="HomePage" class="button" runat="server" OnClick="btnRedirecionar_Home">
                Voltar
            </asp:LinkButton>
        </nav>
        <section class="consultation">
            <div class="column">
                <h2 class="consultation-titles">Datas disponíveis</h2>
                <div class="calendar" style="width: 300px;" runat="server">
                    <div class="month" runat="server">
                        <asp:LinkButton ID="prevButton" runat="server" OnClick="PrevMonth">
                            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0" />
                            </svg>
                        </asp:LinkButton>
                        <h2 id="monthYear" runat="server"></h2>
                        <asp:LinkButton ID="nextButton" runat="server" OnClick="NextMonth">
                            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708"/>
                            </svg>
                        </asp:LinkButton>
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
                    <div class="days" id="days" runat="server"></div>
                </div>
            </div>
            <div class="column">
                <h2 class="consultation-titles">Horários disponíveis</h2>
                <div class="schedules">
                    <asp:LinkButton ID="schduleButton1" runat="server" OnClick="SelectHour" class="schedules-button">
                        08:00
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton2" runat="server" OnClick="SelectHour" class="schedules-button">
                        09:00
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton3" runat="server" OnClick="SelectHour" class="schedules-button">
                        10:00
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton4" runat="server" OnClick="SelectHour" class="schedules-button">
                        11:00
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton5" runat="server" OnClick="SelectHour" class="schedules-button">
                        13:30
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton6" runat="server" OnClick="SelectHour" class="schedules-button">
                        14:30
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton7" runat="server" OnClick="SelectHour" class="schedules-button">
                        15:30
                    </asp:LinkButton>
                    <asp:LinkButton ID="schduleButton8" runat="server" OnClick="SelectHour" class="schedules-button">
                        16:30
                    </asp:LinkButton>
                </div>
            </div>
            <div class="column">
                <h2 class="consultation-titles">Informações da consulta</h2>
                <div class="consultation-info">
                    <p>Consulta</p>
                    <span id="selectedDay" runat="server"></span>
                    <span id="consultationDay" runat="server"></span>
                    <span id="consultationCost" runat="server"></span>
                </div>
            </div>
        </section>
        <div style="display: flex; justify-content: center; width: 100%;">
            <asp:LinkButton ID="AgendaPage" class="button next-page" runat="server" OnClick="btnRedirecionar_Agenda">
                Próximo 
            </asp:LinkButton>
        </div>
    </form>
</body>
</html>
