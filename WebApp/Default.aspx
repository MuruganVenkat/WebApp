<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New WebSite</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script language="C#" runat="server">

      void SubmitBtn_Click(Object sender, EventArgs e) 
      {
         txtTitle.Value="Hello World!!";
      }

   </script>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <input type="button" id="fileButton" value="Bind Data" />
         </div>
         <div>
            <input type="text" runat="server" class="form-control" id="txtTitle" clientidmode="Static" />
         </div>
        <div>
            <asp:Button id="Button1"
           Text="Submit"
           OnClick="SubmitBtn_Click" 
           runat="server"/>
        </div>
    </form>
</body>
     <script>
      $(document).ready(function () {           
          $('#fileButton').on('click', function () {                  
              var URL = window.location.href;
                  $.ajax({
                      headers: {
                          'Accept': 'application/json',
                          'Content-Type': 'application/json'
                      },
                      url: URL,
                      type: "POST",
                      dataType: 'text',
                      async: false,
                      contentType: "application/json; charset=utf-8;",
                      data: '{}',               
                      success: function (data, textStatus, xhr) {
                          console.log(data);
                      },
                      error: function (xhr, textStatus, errorThrown) {
                          console.log(xhr);
                      }
                  });                  
          });
      }); 
   </script>
</html>
