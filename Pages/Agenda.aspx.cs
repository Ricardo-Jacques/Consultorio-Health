using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            if (Session["selectedDay"] != null && Session["monthString"] != null && Session["selectedTime"] != null && Session["consultationCost"] != null)
            {
                consultationDay.InnerText = $"{Session["selectedDay"]} de {Session["monthString"]} às {Session["selectedTime"]}";
                consultationCost.InnerText = $"{Session["consultationCost"]}";
            }
            else
            {
                consultationDay.InnerText = "Por favor, selecione uma data para a sua consulta na página anterior!"; // Mensagem padrão ou lógica alternativa
            }
        }

        protected void btnRedirect_Appointment(object sender, EventArgs e)
        {
            // Redireciona o usuário para outra página
            Response.Redirect("AppointmentSchedule.aspx");
        }
        
        protected void MakeAppointment(object sender, EventArgs e) 
        {
            // Defina a string de conexão com seu banco de dados SQL Server
             string connectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=escoteiros_db;Integrated Security=True;Encrypt=True;Trust Server Certificate=True";

            // Comando SQL para inserir dados na tabela
             string sqlInsert = "INSERT INTO Consultas (Data_Consulta, Hora_Consulta, Paciente, Cpf_Paciente, Telefone) VALUES (@Nome, @Idade)";

            try
            {
                // Criação da conexão com o banco de dados
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Abrir a conexão
                    connection.Open();

                    // Criação do comando para executar o SQL
                    using (SqlCommand command = new SqlCommand(sqlInsert, connection))
                    {
                        // Adicionando parâmetros ao comando para evitar SQL Injection
                        command.Parameters.AddWithValue("@DataConsulta", Session["selectedDate"]);
                        command.Parameters.AddWithValue("@HoraConsulta", Session["selectedTime"]);
                        command.Parameters.AddWithValue("@Name", Name);
                        command.Parameters.AddWithValue("@Idade", Cpf);
                        command.Parameters.AddWithValue("@Email", Email);
                        command.Parameters.AddWithValue("@Phone", Phone);

                        // Executando o comando
                        int rowsAffected = command.ExecuteNonQuery();
                        Console.WriteLine($"{rowsAffected} linha(s) inserida(s) com sucesso.");
                    }
                }
            }

            catch (Exception ex)
            {
                Console.WriteLine("Erro: " + ex.Message);
            }
        }
    }
}