<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
    <jsp:include page="../Includes/navbar.jsp">
        <jsp:param name="title" value="Cadastrar Vendedores"/>
    </jsp:include>
        
         <div class="container">
            <form action="cadastrarVendedoresAction.jsp" method="POST">
                <div class="col-md-4">
                    <label class="form-label">Nome</label><br/>
                    <input type="text" name="nome" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Email</label><br/>
                    <input type="text" name="email" class="form-control" />
                </div>
                
                
                <button type="submit" class="btn btn-primary mt-3">Cadastrar</button>
            </form>
        </div>            
        
    </body>
</html>
