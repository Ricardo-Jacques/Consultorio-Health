<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Consultorio_Health._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" style="margin: 0px !important;">
    <%--CSS--%>
    <link href="/Styles/global.css" rel="stylesheet" type="text/css" />
    <link href="/Styles/header.css" rel="stylesheet" type="text/css" />
    <link href="/Styles/site.css" rel="stylesheet" type="text/css" />

    <header>
    <nav>
        <div class="main-title">
            <svg xmlns="http://www.w3.org/2000/svg" width="42" height="80" fill="currentColor" class="bi bi-person-raised-hand" viewBox="0 0 16 16">
                <path d="M6 6.207v9.043a.75.75 0 0 0 1.5 0V10.5a.5.5 0 0 1 1 0v4.75a.75.75 0 0 0 1.5 0v-8.5a.25.25 0 1 1 .5 0v2.5a.75.75 0 0 0 1.5 0V6.5a3 3 0 0 0-3-3H6.236a1 1 0 0 1-.447-.106l-.33-.165A.83.83 0 0 1 5 2.488V.75a.75.75 0 0 0-1.5 0v2.083c0 .715.404 1.37 1.044 1.689L5.5 5c.32.32.5.754.5 1.207" />
                <path d="M8 3a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3" />
            </svg>
            <h1>
                Consultório <br />
                <strong>Health</strong>
            </h1>

        </div>
        <ul class="nav-bar">
            <li>
                <a class="nav-bar-item" asp-area="" asp-controller="Home" asp-action="Index">Home</a>
            </li>
            <li>
                <a class="nav-bar-item">Serviços</a>
            </li>
            <li>
                <a class="nav-bar-item">Contato</a>
            </li>
        </ul>
    </nav>
</header>
    <main>
        <section class="home">
            <div>
                <div>
                    <h2>What is Lorem Ipsum?</h2>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting
                industry. Lorem Ipsum has been the industry's standard dummy text
                ever since the 1500s.
                    </p>
                </div>
                <asp:LinkButton ID="AppointmentPage" class="button" runat="server" OnClick="btnRedirecionar_Click">
                    Agende uma consulta
                </asp:LinkButton>
            </div>
            <img src="~/images/pexels.png" alt="Alternate Text" class="imagem" />
        </section>
    </main>
</asp:Content>
