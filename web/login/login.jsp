<%-- 
    Document   : login
    Created on : 02-05-2014, 07:59:14 PM
    Author     : Dasael Sandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String error=request.getParameter("error");
if(error==null || error=="null"){
 error="";
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La H TV - Login</title>
        <link rel="stylesheet" type="text/css" href="../css/site.css" />
        <script>
            function trim(s) 
            {
                return s.replace( /^s*/, "" ).replace( /s*$/, "" );
            }

            function validate()
            {
                if(trim(document.frmLogin.user.value)=="")
                {
                  alert("Login empty");
                  document.frmLogin.user.focus();
                  return false;
                }
                else if(trim(document.frmLogin.pass.value)=="")
                {
                  alert("password empty");
                  document.frmLogin.pass.focus();
                  return false;
                }
            }
        </script>
    </head>
    <body>
    <center>
        <form name="frmLogin" onsubmit="return validate()" action="login/doLogin.jsp" method="post">
                <table>
                    <tr>
                        <th colspan="2">Login</th>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td><input type="text" name="user" value="" size="30px" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="pass" value="" size="30px" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div id="error"><%=error%></div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="sSubmit" value="Entrar" size="25px" />
                        </td>
                    </tr>
                </table>
            </form>
    </center>
    </body>
</html>
