﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="EmployeeAttendance.aspx.cs" Inherits="SchoolManagementSystem.Admin.EmployeeAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="background-image:url('../Image/bg3.jpg'); width:100%; background-repeat: no-repeat; background-size:cover; background-attachment:fixed;">
        <div class="container p-md-4 p-sm-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <div class="text-right">

                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                        <asp:Label ID="lblTime" runat="server" Font-Bold="true"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <h3 class="text-center">Teacher's Attendance</h3>
            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
             
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-6">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered"
                        EmptyDataText="No Record to display!">
                        <Columns>
                            
                            
                            <asp:TemplateField HeaderText="Class">
                                <ItemTemplate>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Present" Checked="true" GroupName="attendence"  CssClass="form-check-input"/>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Absent"  GroupName="attendence" CssClass="form-check-input" />
                                    </div>

                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                      
                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />
                    </asp:GridView>
                </div>
                </div>

              <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnMarkAttendance" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Mark Attendance" OnClick="btnMarkAttendance_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
