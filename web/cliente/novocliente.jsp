<%-- 
    Document   : novocliente
    Created on : 11/05/2020, 15:35:22
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>

<%@page import="com.cad.BdCliente"%>
<%@page import="com.cad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") !=  null){
        String newnomecliente = request.getParameter("nomecliente");
        String newcpfcliente = request.getParameter("cpfcliente");
        String newrgcliente = request.getParameter("rgcliente");
        String newemailcliente = request.getParameter("emailcliente");
        int newtelefonecliente = Integer.parseInt(request.getParameter("telefonecliente"));
        String newenderecocliente = request.getParameter("enderecocliente");
                
        if(newnomecliente.isEmpty()){
            error = "Nome Inválido";
        }
        if(newcpfcliente.isEmpty()){
            error = "CPF Inválido";
        }
        if(newrgcliente.isEmpty()){
            error = "RG Inválido";
        }
        if(newemailcliente.isEmpty()){
            error = "E-mail Inválido";
        }
        if(newenderecocliente.isEmpty()){
            error = "Endereço Inválido";
        }else{
                Cliente user = new Cliente();
                user.setNomecliente(newnomecliente);
                user.setCpfcliente(newcpfcliente);
                user.setRgcliente(newrgcliente);
                user.setEmailcliente(newemailcliente);
                user.setTelefonecliente(newtelefonecliente);
                user.setEnderecocliente(newenderecocliente); 
                
                BdCliente.getUsercliente().add(user);
                response.sendRedirect("cadastroscliente.jsp");
            }
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo - Cadastro de Usuarios</title>
    </head>
    <body>
        <h1>Cadastro de Usuarios:</h1>
        <h2>Novo Cadastro:</h2>
        <li><a href="cadastroscliente.jsp">Lista de Usuário</a><br/><br/></li>
        
        <%if(error!=null){%>
            <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome do Cliente:<br/>
            <input type="text" name="nomecliente"/><br/>
            CPF:<br/>
            <input type="number" name="cpfcliente"/><br/>
            RG:<br/>
            <input type="number" name="rgcliente"/><br/>
            E-mail:<br/>
            <input type="email" name="emailcliente"/><br/>
            Telefone:<br/>
            <input type="number" name="telefonecliente"/><br/>
            Endereço:<br/>
            <input type="text" name="enderecocliente"/><br/><br/>
            <input type="submit" name="add" value="Adicionar"/><br/>
        </form>
    </body>
</html>
