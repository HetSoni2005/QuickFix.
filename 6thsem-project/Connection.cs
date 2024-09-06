using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using _6thsem_project.Admin;

namespace _6thsem_project
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }
    }

    public class Utils
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;

        public static bool IsvalidExtension(string fileName)
        {
            bool isValid = false;
            string[] fileExtension = { ".jpg", ".png", ".jpeg" };
            for (int i = 0; i <= fileExtension.Length - 1; i++) 
            {
                if (fileName.Contains(fileExtension[i]))
                {
                            isValid = true;
                            break;
                }
            }
            return isValid;
        }

        //setting default image if thier is no image for any job
        public static string GetImageUrl(object url)
        {
            string url1 = "";
            if (string.IsNullOrEmpty(url.ToString()) || url == DBNull.Value)
            {
                url1 = "../Images/No_image.png";
            }
            else
            {
                url1 = String.Format("../{0}", url);
            }
            //return resolve url
            return url1;

        }

        public bool updateCartQuantity(int quantity,int productId,int userId)
        {
            bool isupdated = false;
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Cart_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "UPDATE");
            cmd.Parameters.AddWithValue("@ProductId", productId);
            cmd.Parameters.AddWithValue("@Quantity", quantity);
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                isupdated = true;

            }
            catch (Exception ex)
            {
                isupdated=false;
               System.Web.HttpContext.Current.Response.Write("<script>alert('Error - " + ex.Message + "');<script>");
            }
            finally
            {
                con.Close();
            }
            return isupdated;
        }

        public int cartCount(int userId)
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Cart_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT");
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt.Rows.Count;
        }

        public static string GetuniqueId()
        {
            Guid guid = Guid.NewGuid();
            String uniqueId = guid.ToString();
            return uniqueId;
        }

        internal static void verifyPaymentSignature(Dictionary<string, string> attributes)
        {
            throw new NotImplementedException();
        }
    }
}