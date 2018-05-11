<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuscarCliente.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewCliente.BuscarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="card-header">
       <strong class="card-title">Clientes</strong>
        </div> 
    <!--Tabla de cliente-->  
                       <div class="content mt-3">
                        <div class="animated fadeIn">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong class="card-title">Clientes</strong><button class="btn btn-outline-warning" id="Inactivos">Mostrar Inactivos</button>
                                        </div>
                                        <div class="card-body">
                                            <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Codigo</th>
                                                        <th>Nombre</th>
                                                        <th>Apellido</th>
                                                        <th>Email</th>
                                                        <th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>    
                                                    <%
                                                        while(getcliente().Read())
                                                        {
                                                            %>
                                                              <tr><td><%=getcliente()["Id_Cliente"] %></td>
                                                                  <td><%=getcliente()["Nombre"] %></td>
                                                                  <td><%=getcliente()["Apellido"] %></td>
                                                                  <td><%=getcliente()["Email"] %></td>
                                                                  <td>
                                                                     <a title="Mostrar" onclick="mostrar" href="VerCliente.aspx?id=<%=getcliente()["Id_Cliente"] %>">
                                                                       <i class="ti-eye"></i>
                                                                     </a>
                                                                     <a title="Editar" onclick="editar" href="EditarCliente.aspx?id=<%=getcliente()["Id_Cliente"] %>">
                                                                       <i class="ti-pencil-alt"></i>
                                                                    </a> 
                                                                      <a href="delete.aspx?id=<%=getcliente()["Id_Cliente"] %>" onclick="eliminar('delete.aspx?id=<%=getcliente()["Id_Cliente"] %>')">
                                                                      <i class="menu-icon fa fa-trash-o"></i>
                                                                      </a> 
                                                                      </td>
                                                             </tr>
                                                            <%
                                                        }
                                                    %>                             
                                                </tbody>
                                                
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- .animated -->
                    </div><!-- .content -->
    <script type="text/javascript">
          $(function () {

              // Proxy created on the fly
              var job = $.connection.myHub;

              // Declare a function on the job hub so the server can invoke it
              job.client.displayStatus = function () {
                  getcliente();
              };

              // Start the connection
              $.connection.hub.start();
              <% getcliente();%>
              //getData();
          });
      </script>
     <script type="text/javascript" src="../../Content/listacliente.js"></script>
    <script src="../../Content/jquery-3.3.1.js"></script>

     
    
    <script>
        function successAlert(title, msg) {
            if (typeof msg == 'undefined') {
                msg = title;
                title = 'Success';
            }
            showAlert(title, msg, 'green');
        }
    </script>
    
    <script type="text/javascript">
        $("#bootstrap-data-table23").hide();
    </script>

    <!--scrip de confirmacion de eliminacion-->
                  <script type="text/javascript">
                      function ConfirmDemo() {
                      //Ingresamos un mensaje a mostrar
                         var mensaje = confirm("¿Estas seguro que deseas eliminar?");
                            //Detectamos si el usuario acepto el mensaje
                             if (mensaje) {
                                   alert("¡Eliminado!");
                                          }
                            //Detectamos si el usuario denegó el mensaje
                            else {
                                 alert("¡Haz denegado el mensaje!");
                                 }
                                 }
                   </script>
</asp:Content>
