<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 407px, border-radius:15px">
    <form id="form1" runat="server">
    <div>
    <fieldset> 
        
        
        <legend>Thông Tin Đăng Nhập Đăng Ký </legend>
        <table class="tb_dn" >
            <tr> 
                <td colspan="2" style="text-align: center; font-size: 35px; color: #0000FF;">
                    Đăng Nhập&nbsp;</td>
            </tr>
            <tr> 
                <td colspan="2">
                    <asp:Label ID="lbIMsgErorr" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                 <td>Tên Đăng nhập</td><td>
                    <asp:TextBox ID="txtUsser" runat="server"></asp:TextBox></td>
               </tr>
             <tr>
                 <td>PassWord</td><td>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>

                    </td>

            </tr>
            <tr>
                <!-- style -->
                <style>
                    table {
                                text-align: center;
                                padding-left: 440px;
                                font-family: serif;
                            }
                    #btlogIn{border-radius:15px;}
                    #btlogIn:hover{background:#00ff90}

                    #Btn_dy{border-radius:15px;}
                    #Btn_dy:hover{background:#00ff90}
                    input#txtUsser {
                        padding: 7px;
                        border-radius: 4px;
                        border-color: #66FFFF;
                    }

                    input#txtUsser {}

                    input#txtPassword {
                        padding: 7px;
                        border-radius: 4px;
                        border-color: #66FFFF;
                    }

                </style>
                <!-- endstyle -->
                <td colspan="2">
                    <asp:Button ID="btlogIn" runat="server" Text="Đăng Nhập" OnClick="btlogin_Click" Width="150px" Height="50px" BackColor="#66CCFF" BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="2px" />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn_dy" runat="server" OnClick="Btn_dy_Click" Text="Đăng Ký" Width="150px" Height="50px" BackColor="#66CCFF" BorderColor="#0066FF" BorderWidth="2px" />

                </td>
            </tr>

        </table>
    </fieldset>

    </div>
       
    </form>
</body>
</html>
