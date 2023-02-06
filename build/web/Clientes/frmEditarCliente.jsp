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
                <h1>Editar Cliente</h1>
            </div>
            <div class="col-md-4">
                <form action="editarClienteAction.jsp" method="POST">
                    <label class="form-label">Código do Cliente</label>
                    <input type="text" class="form-control" name="id" value="<%=request.getParameter("id")%>" />
                    
                    <div class="mt-3">
                        <label class="form-label">Nome</label>
                        <input type="text" class="form-control col-md-4" name="nome" value="<%=request.getParameter("nome")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Email</label>
                        <input type="text" name="email" class="form-control col-md-4" value="<%=request.getParameter("email")%>" />
                    </div>
                    <div class="col-md-4 mt-3">                    
                        <div class="form-check">
                            <%
                            //boolean vip = Boolean.parseBoolean(request.getParameter("vip"));
                            if(Boolean.parseBoolean(request.getParameter("vip")) == true){
                            %>    
                                <input class="form-check-input" type="checkbox" value="true" name="vip" checked>
                            <%
                            } else {
                            %>
                                <input class="form-check-input" type="checkbox" value="true" name="vip">
                            <%
                            }
                            %>
                            <label class="form-check-label" for="flexCheckDefault">
                                Vip
                            </label>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success mt-3">Salvar</button>
                </form>
            </div>
            
        </div>
        
    </body>
</html>
