<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
    <jsp:include page="../Includes/navbar.jsp">
        <jsp:param name="title" value="Cadastrar Clientes"/>
    </jsp:include>
        
         <div class="container">
            <form action="cadastrarClientesAction.jsp" method="POST">
                <div class="col-md-4">
                    <label class="form-label">Nome</label><br/>
                    <input type="text" name="nome" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Email</label><br/>
                    <input type="text" name="email" class="form-control" />
                </div>
                <div class="col-md-4 mt-3">                    
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="true" name="vip">
                        <label class="form-check-label" for="flexCheckDefault">
                            Vip
                        </label>
                    </div>
                </div>
                
                <button type="submit" class="btn btn-primary mt-3">Cadastrar</button>
            </form>
        </div>            
        
    </body>
</html>