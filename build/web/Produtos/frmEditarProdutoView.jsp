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
                <h1>Editar Produto</h1>
            </div>
            <div class="col-md-4">
                <form action="editarProdutoAction.jsp" method="POST">
                    <label class="form-label">Código do Produto</label>
                    <input type="text" class="form-control" name="id" value="<%=request.getParameter("id")%>" />
                    
                    <div class="mt-3">
                        <label class="form-label">Nome</label>
                        <input type="text" class="form-control col-md-4" name="nome" value="<%=request.getParameter("nome")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Valor</label>
                        <input type="text" name="valor" class="form-control col-md-4" value="<%=request.getParameter("valor")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Quantidade</label>
                        <input type="number" name="quantidade" class="form-control col-md-4" value="<%=request.getParameter("quantidade")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Quantidade Mínima</label>
                        <input type="number" name="minQuantidade" class="form-control col-md-4" value="<%=request.getParameter("min_quantidade")%>" />
                    </div>

                    <button type="submit" class="btn btn-success mt-3">Salvar</button>
                </form>
            </div>
            
        </div>
        
    </body>
</html>
