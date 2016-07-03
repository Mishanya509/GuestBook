using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;


public static class GuestMsg
{
    private static readonly string connStr = WebConfigurationManager.ConnectionStrings["main_test_1ConnectionString"].ConnectionString;

    public static void Add(string name, string email, string page, string msgText)
    {

        SqlConnection connection = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("insert into GuestMsg ( UserName, Email, Homepage, Msg ) " +
                                        "values (@name, @email, @page, @msg ) ", connection);
        SqlTransaction transaction = null;

        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@page", page);
        cmd.Parameters.AddWithValue("@msg", msgText);

        try
        {
            connection.Open();
            transaction = connection.BeginTransaction();

            cmd.Transaction = transaction;
            cmd.ExecuteNonQuery();

            transaction.Commit();

        }
        catch (Exception ex)
        {
            transaction.Rollback();
            throw ex;
        }
        finally
        {
            connection.Close();
        }
    }

    public static DataTable GetMsg()
    {

        using( SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["main_test_1ConnectionString"].ConnectionString))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM GuestMsg order by WhnCrt desc", connection);
            SqlDataReader redear = cmd.ExecuteReader();
            DataTable result = new DataTable();
            result.Load(redear);
            return result;
        }
    }

}