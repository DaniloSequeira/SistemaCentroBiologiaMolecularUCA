<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarOrden.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewOrdenMaria.AgregarOrden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="content mt-3">
            <div class="animated">
                <div class="card">
                    <div class="card-header">
                        <i class="mr-2 fa fa-align-justify"></i>
                        <strong class="card-title" v-if="headerText">Crear</strong>
                    </div>
                    <div class="card-body">
                         <button type="button" class="btn-success" data-toggle="modal" data-target="#mediumModal">
                   <i class="menu-icon fa fa-plus-circle"></i> Nueva orden ADN </button>
   
                    </div>
                </div>

                <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="mediumModalLabel">Agregar Orden ADN</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                    <div class="card">
                                            <div class="card-body card-block">
                                              <form method="post" enctype="multipart/form-data" class="form-horizontal" runat="server">
                                                  <!--Comienzo de los formulario-->                

                           

                         

                               <!--tipo caso-->
                              <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">Caso</label></div>
                            <div class="col-12 col-md-9 ">
                             <asp:DropDownList ID="Mtipocaso" runat="server" ToolTip="caso" CssClass="form-control">
                              <asp:ListItem Value="0">SELECCIONE</asp:ListItem>
                               <asp:ListItem Value="1">Publico</asp:ListItem>
                               <asp:ListItem Value="2">Privado</asp:ListItem>
                                  <asp:ListItem Value="3">No necesita</asp:ListItem>
                               </asp:DropDownList>
                            </div>
                          </div>

                                 <!--Seleccion de tipo orden-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">Tipo de examen</label></div>
                            <div class="col-12 col-md-9 ">
                                 <asp:DropDownList ID="Mtipoorden" runat="server" ToolTip="tipo" CssClass="form-control"  OnSelectedIndexChanged="Mtipoorden_SelectedIndexChanged" AutoPostBack="true">
                        
                               </asp:DropDownList> 
                               
                              
                          
                            </div>
                          </div>

                            
                         
                           
                            <!--bouvher-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="text-input" class=" form-control-label">Boucher</label></div>
                            <div class="col-12 col-md-9">
                                 <asp:TextBox ID="Mbaucher" runat="server" Text="" ToolTip="baucher" CssClass="form-control" placeholder="Ingrese el baucher"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Mbaucher" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                          </div>
                              </div>

                            <!--no_orden-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="text-input" class=" form-control-label">Número orden</label></div>
                            <div class="col-12 col-md-9">
                                 <asp:TextBox ID="Mnoorden" runat="server" Text="" ToolTip="noorden" CssClass="form-control" placeholder="Ingrese el número de orden"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Mnoorden" ErrorMessage="Ingrese Solo numeros" ValidationExpression="^[0-9]*$" MaxLength="8"></asp:RegularExpressionValidator>   
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Mnoorden" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                          </div>
                              </div>
                          

                            <!--Seleccion de estado-->

                               <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">Estado</label></div>
                            <div class="col-12 col-md-9 ">
                             <asp:DropDownList ID="Mestado" runat="server" ToolTip="estado" CssClass="form-control">
                              <asp:ListItem Value="0">SELECCIONE</asp:ListItem>
                               <asp:ListItem Value="1">Activo</asp:ListItem>
                               <asp:ListItem Value="2">En espera</asp:ListItem>
                               </asp:DropDownList>
                            </div>
                          </div>

                            <!--fecha-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="text-input" class=" form-control-label">Fecha</label></div>
                            <div class="col-12 col-md-9">
                                 <asp:TextBox ID="Mfecha" runat="server" Text="" ToolTip="fecha" CssClass="form-control" placeholder="Ingrese la fecha"></asp:TextBox> 
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Mfecha" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                          </div>
                               </div>

                                   <!--observaciones-->                            
                             <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">Observaciones</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Mobservaciones" runat="server" Text="" ToolTip="observaciones" CssClass="form-control" placeholder="Ingrese las observaciones"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobservaciones" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                               </div>
                          </div>

                       

     <div class="modal-footer">
                                                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                        <asp:HiddenField runat="server" ID="id_orden" />
                                                        <asp:Button id="enviar" runat="server" Text="enviar" CssClass="btn btn-primary" OnClick="InsertarOrden"/>
                                                 </div>
                                              </form>
                                            </div>
                                         </div>
                                     </div>
                                 </div>
                              </div>
                          </div>
                      </div>
                   </div>

       <!--Tabla de orden-->                               
                         <div class="content mt-3">
                        <div class="animated fadeIn">
                            <div class="row">
                                <div class="col-md-12 ">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong class="card-title">Orden ADN humano</strong>
                                        </div>
                                        <div class="card-body">
                                            <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Codigo</th>
                                                         
                                                        <th>baucher</th>
                                                        
                                                        <th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                     <%
                                                        while(getregistros().Read())
                                                        {
                                                            %>
                                                              <tr><td><%=getregistros()["Id_orden"] %></td>
                                                                  
                                                                  <td><%=getregistros()["Baucher"] %></td>
                                                                  
                                                                  <td>
                                                                     <a title="Mostrar" onclick="mostrar" href="VerOrdenAdn.aspx?id=<%=getregistros()["Id_orden"] %>">
                                                                       <i class="ti-eye"></i>
                                                                     </a>
                                                                     <a title="Editar" onclick="editar" href="ModificarOrden.aspx?id=<%=getregistros()["Id_orden"] %>">
                                                                       <i class="ti-pencil-alt"></i>
                                                                    </a> 
                                                                      <a href="EliminarOrden.aspx?id=<%=getregistros()["Id_orden"] %>" onclick="Eliminar('EliminarOrden.aspx?id=<%=getregistros()["Id_orden"] %>');">
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
    <script type="text/javascript" src="../../Content/Listaorden.js"></script>

</asp:Content>
