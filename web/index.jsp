
<html>
    <jsp:include page="Includes/head.jsp"></jsp:include>
    <body>
    <jsp:include page="Includes/navbar.jsp">
        <jsp:param name="title" value="Home" />
    </jsp:include>
        
         <div class="container">
            <div>
                <h1>Java Web - Sistema de Estoque</h1>
            </div>             
            
            <a type="button" class="btn btn-primary" href="/Estoque/Produtos/listarProdutos.jsp">Produtos</a>
            <a type="button" class="btn btn-success" href="/Estoque/Clientes/listarClientes.jsp">Clientes</a>
            <a type="button" class="btn btn-danger" href="/Estoque/Vendedores/listarVendedores.jsp">Vendedores</a>
        </div>
    </body>
</html>
