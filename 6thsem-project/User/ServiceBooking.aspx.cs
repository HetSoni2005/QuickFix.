using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6thsem_project.User
{
    public partial class ServiceBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve form data from the ASP.NET controls
            string serviceType = ddlServiceType.SelectedValue;
            string serviceDate = txtServiceDate.Text;
            string serviceTime = txtServiceTime.Text;
            string fullName = txtFullName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string notes = txtNotes.Text;

            // Optional: Add validation logic (e.g., checking if date is in the future)
            //if (DateTime.TryParse(serviceDate, out DateTime bookingDate) && bookingDate < DateTime.Today)
            //{
            //    // Example: Display an error message (e.g., set a label's text)
            //    lblError.Text = "Service date must be in the future.";
            //    lblError.Visible = true;
            //    return;
            //}

            //// Process the booking information (e.g., save to a database, send an email, etc.)
            //// Example: Storing in a database
            //try
            //{
            //    // InsertBookingToDatabase is a hypothetical method that stores the data
            //    InsertBookingToDatabase(serviceType, bookingDate, serviceTime, fullName, email, phone, address, notes);

            //    // Display a success message
            //    lblSuccess.Text = "Your service booking has been successfully submitted!";
            //    lblSuccess.Visible = true;
            //}
            //catch (Exception ex)
            //{
            //    // Handle exceptions (e.g., database errors)
            //    lblError.Text = "An error occurred while processing your request. Please try again.";
            //    lblError.Visible = true;
            //    // Log the exception details if necessary for debugging (optional)
            //}
        }

        // Example method for inserting the booking information into a database (you will need actual DB code here)
        
    
    }
    //private void InsertBookingToDatabase(string serviceType, DateTime serviceDate, string serviceTime, string fullName, string email, string phone, string address, string notes)
    //{
    //    // Add your database logic here (e.g., using ADO.NET, Entity Framework, etc.)
    //    // This is just a placeholder for illustration
    //}
}