<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="Consultorio_Health.Pages.AppointmentSchedule.Agenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="/Styles/agenda.css" asp-append-version="true" />
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="title">Confirme seus dados</h2>
        <nav class="previous-page">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0" />
            </svg>
            <asp:LinkButton ID="HomePage" class="button" runat="server" OnClick="btnRedirect_Appointment">
            Voltar
            </asp:LinkButton>
        </nav>
        <section class="agenda">
            <div class="column">
                <div class="form">
                    <div>
                        <label>Nome:</label>
                        <input id="Name" class="form-input" type="text" value="" runat="server" />
                    </div>
                    <div>
                        <label>CPF:</label>
                        <input id="Cpf" class="form-input" type="number" value="" runat="server" />
                    </div>
                    <div>
                        <label>E-mail</label>
                        <input id="Email" class="form-input" type="email" value="" runat="server" onchange="ValidateForm()" />
                    </div>
                    <div>
                        <label>Telefone:</label>
                        <input id="Phone" class="form-input" type="number" value="" runat="server" oninput="formatPhone()" maxlength="13" placeholder="Digite seu telefone" />
                    </div>
                </div>
            </div>
            <div class="column">
                <div>
                    <div class="consultation-info">
                        <p>Consulta</p>
                        <span id="selectedDay" runat="server"></span>
                        <span id="consultationDay" runat="server"></span>
                        <span id="consultationCost" runat="server"></span>
                    </div>
                </div>
            </div>
        </section>
        <div style="display: flex; justify-content: center; width: 100%;">
            <asp:Button ID="SubmitForm" runat="server" class="button submit" type="submit" Text="Marcar consulta" OnClick="MakeAppointment"></asp:Button>
        </div>
    </form>
    <script src="../Scripts/Agenda.js"></script>
</body>
</html>
