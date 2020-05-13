<%-- 
    Document   : novofornecedor
    Created on : 11/05/2020, 15:37:17
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>

<%@page import="com.cad.BdFornecedor"%>
<%@page import="com.cad.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") !=  null){
        String newnomefornecedor = request.getParameter("nomefornecedor");
        String newrazaosocialfornecedor = request.getParameter("razaosocialfornecedor");
        String newcnpjfornecedor = request.getParameter("cnpjfornecedor");
        String newemailfornecedor = request.getParameter("emailfornecedor");
        int newtelefonefornecedor = Integer.parseInt(request.getParameter("telefonefornecedor"));
        String newenderecofornecedor = request.getParameter("enderecofornecedor");
                
        if(newnomefornecedor.isEmpty()){
            error = "Nome Inválido";
        }
        if(newrazaosocialfornecedor.isEmpty()){
            error = "Razão Inválida";
        }
        if(newcnpjfornecedor.isEmpty()){
            error = "CNPJ Inválido";
        }
        if(newemailfornecedor.isEmpty()){
            error = "Email Inválido";
        }
        if(newenderecofornecedor.isEmpty()){
            error = "Endereço Inválido";
        }else{
                Fornecedor user = new Fornecedor();
                user.setNomefornecedor(newnomefornecedor);
                user.setCnpjfornecedor(newrazaosocialfornecedor);
                user.setCnpjfornecedor(newcnpjfornecedor);
                user.setEmailfornecedor(newemailfornecedor);
                user.setTelefonefornecedor(newtelefonefornecedor);
                user.setEnderecofornecedor(newenderecofornecedor);
                BdFornecedor.getUserFornecedor().add(user);
                response.sendRedirect("cadastrosfornecedor.jsp");
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
        <li><a href="cadastrosfornecedor.jsp">Lista de Usuário</a><br/><br/></li>
        
        <%if(error!=null){%>
            <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome do Fornecedor:<br/>
            <input type="text" name="nomefornecedor"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaosocialfornecedor"/><br/>
            CNPJ<br/>
            <input type="number" name="cnpjfornecedor"/><br/>
            E-mail:<br/>
            <input type="email" name="emailfornecedor"/><br/>
            Telefone:<br/>
            <input type="number" name="telefonefornecedor"/><br/>
            Endereço:<br/>
            <input type="text" name="enderecofornecedor"/><br/><br/>
            <input type="submit" name="add" value="Adicionar"/><br/>
        </form>
    </body>
</html>

