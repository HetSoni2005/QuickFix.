<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="ServiceBooking.aspx.cs" Inherits="_6thsem_project.User.ServiceBooking" %>

<%@ Import Namespace="_6thsem_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Service</title>
    <link rel="stylesheet" href="service_book.css">
</head>
<body>
    <form id="form1" runat="server">
        <!-- Booking Form Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <h2 class="text-center mb-4">Book a Service</h2>
                        <asp:Panel CssClass="bg-light p-5 rounded shadow-lg" runat="server">
                            <div class="row g-4">

                                <!-- Service Type -->
                                <div class="col-md-12">
                                    <label for="serviceType" class="form-label">Select Service</label>
                                    <asp:DropDownList ID="ddlServiceType" CssClass="form-select" runat="server" AppendDataBoundItems="true" required="required">
                                        <asp:ListItem Text="Choose a Service..." Value="" Selected="True" Disabled="True"></asp:ListItem>
                                        <asp:ListItem Text="Electrician" Value="electrician"></asp:ListItem>
                                        <asp:ListItem Text="Plumber" Value="plumber"></asp:ListItem>
                                        <asp:ListItem Text="Cook" Value="cook"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ControlToValidate="ddlServiceType" InitialValue="" ErrorMessage="Service Type is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Date -->
                                <div class="col-md-6">
                                    <label for="serviceDate" class="form-label">Select Date</label>
                                    <asp:TextBox ID="txtServiceDate" CssClass="form-control" TextMode="Date" runat="server" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtServiceDate" ErrorMessage="Date is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Time -->
                                <div class="col-md-6">
                                    <label for="serviceTime" class="form-label">Select Time</label>
                                    <asp:TextBox ID="txtServiceTime" CssClass="form-control" TextMode="Time" runat="server" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtServiceTime" ErrorMessage="Time is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Full Name -->
                                <div class="col-md-12">
                                    <label for="fullName" class="form-label">Your Full Name</label>
                                    <asp:TextBox ID="txtFullName" CssClass="form-control" Placeholder="Enter your full name" runat="server" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtFullName" ErrorMessage="Full Name is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="email" class="form-label">Email Address</label>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" TextMode="Email" Placeholder="Enter your email address" runat="server" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Phone -->
                                <div class="col-md-6">
                                    <label for="phone" class="form-label">Phone Number</label>
                                    <asp:TextBox ID="txtPhone" CssClass="form-control" TextMode="Phone" Placeholder="Enter your phone number" runat="server" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtPhone" ErrorMessage="Phone number is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Address -->
                                <div class="col-md-12">
                                    <label for="address" class="form-label">Service Address</label>
                                    <asp:TextBox ID="txtAddress" CssClass="form-control" Placeholder="Enter your address" runat="server" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtAddress" ErrorMessage="Address is required." CssClass="text-danger" runat="server" />
                                </div>

                                <!-- Additional Notes -->
                                <div class="col-md-12">
                                    <label for="notes" class="form-label">Additional Notes (Optional)</label>
                                    <asp:TextBox ID="txtNotes" CssClass="form-control" TextMode="MultiLine" Rows="4" Placeholder="Any specific requirements?" runat="server"></asp:TextBox>
                                </div>

                                <!-- Submit Button -->
                                <div class="col-12 text-center">
                                    <asp:Button ID="btnSubmit" CssClass="btn btn-gradient-primary py-3 px-5" Text="Book Now" runat="server" OnClick="btnSubmit_Click" />
                                </div>

                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking Form End -->
    </form>
</body>
</html>
</asp:Content>
