﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarOrden.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewOrdenMaria.ModificarOrden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="card-header">
       <strong class="card-title">Orden ADN humano</strong>
        </div>  

    
                                <!--Aqui Comienza el formulario dentro del modal-->                                
                     <div class="card">
                      <div class="card-body card-block">
                          <form method="post" enctype="multipart/form-data" class="form-horizontal" runat="server">


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
                                 <asp:DropDownList ID="Mtipoorden" runat="server" ToolTip="tipo" CssClass="form-control">
                              
                               </asp:DropDownList> 
                               
                              
                          
                            </div>
                          </div>

                                     <!--observaciones-->                            
                             <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">Observaciones</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Mobservaciones" runat="server" Text="" ToolTip="observaciones" CssClass="form-control" placeholder="Ingrese el baucher"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobservaciones" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
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
                                 <asp:TextBox ID="Mnoorden" runat="server" Text="" ToolTip="noorden" CssClass="form-control" placeholder="Ingrese el número orden"></asp:TextBox>
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

                       
                                <div class="modal-footer">
                                                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                        <asp:HiddenField runat="server" ID="Id_orden" />
                                                     <asp:Button id="enviar" runat="server" Text="Modificar" CssClass="btn btn-primary" OnClick="EditarFormulario" />
                                                 </div>
                              </form>

                           </div>
                                        </div> 

                  <script type="text/javascript" src="../../Content/Listaorden.js"></script>     
    <script  type="text/javascript">
        window.onload = function () {
            edit( '<%=ord.Tipo_caso%>', '<%=ord.Tipo_orden%>', '<%=ord.Observaciones%>','<%=ord.Baucher%>',
                '<%=ord.No_orden%>','<%=ord.Estado%>','<%=ord.Fecha%>')
        };
    </script>     

</asp:Content>
