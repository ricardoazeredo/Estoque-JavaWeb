<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
    <jsp:include page="../Includes/navbar.jsp">
        <jsp:param name="title" value="Cadastrar Produto"/>
    </jsp:include>
        
         <div class="container">
            <form action="cadastrarProdutoAction.jsp" method="POST">
                <div class="col-md-4">
                    <label class="form-label">Produto</label><br/>
                    <input type="text" name="nome" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Valor</label><br/>
                    <input type="text" name="valor" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Quantidade</label><br/>
                    <input type="text" name="quantidade" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Qauntidade Mínima</label><br/>
                   <input type="text" name="minquantidade" class="form-control" />
                </div>
                <button type="submit" class="btn btn-primary mt-3">Cadastrar</button>
            </form>
        </div>            
        
    </body>
</html>
