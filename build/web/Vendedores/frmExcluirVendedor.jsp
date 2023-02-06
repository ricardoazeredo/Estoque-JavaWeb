<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
    <jsp:include page="../Includes/navbar.jsp">
        <jsp:param name="title" value="Editar Produto" />
    </jsp:include>
        
        <div class="container">
            <div>
                <h1>Excluir Vendedor</h1>
            </div>
            <div class="col-md-4">
                <form action="excluirVendedorAction.jsp" method="POST">
                    <label class="form-label">Código do Vendendor</label>
                    <input type="text" class="form-control" name="id" value="<%=request.getParameter("id")%>" />
                    
                    <div class="mt-3">
                        <label class="form-label">Nome</label>
                        <input type="text" class="form-control col-md-4" name="nome" value="<%=request.getParameter("nome")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Email</label>
                        <input type="text" name="email" class="form-control col-md-4" value="<%=request.getParameter("email")%>" />
                    </div>
                    

                    <button type="submit" class="btn btn-danger mt-3">Excluir</button>
                </form>
            </div>
            
        </div>
        
    </body>
</html>
