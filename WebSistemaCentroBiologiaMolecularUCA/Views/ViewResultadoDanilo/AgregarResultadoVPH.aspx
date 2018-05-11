<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarResultadoVPH.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewResultadoDanilo.AgregarResultadoVPH" %>
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
                   <i class="menu-icon fa fa-plus-circle"></i> Nuevo examen VPH </button>
   
                    </div>
                </div>

                <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="mediumModalLabel">Agregar Orden VPH</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                    <div class="card">
                                            <div class="card-body card-block">
                                              <form method="post" enctype="multipart/form-data" class="form-horizontal" runat="server">

                            <!--Comienzo de los formulario-->  
                                                     <!--fecha-->
                           <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">Fecha</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Mfecha" runat="server" Text="" ToolTip="Fecha" CssClass="form-control" placeholder="Ingrese la fecha"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Mfecha" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                               </div>
                          </div>

                           
                          
                            

                            <!--validacion-->
                       <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">Validacion</label></div>
                            <div class="col-12 col-md-9 ">
                             <asp:DropDownList ID="Mvalidacion" runat="server" ToolTip="caso" CssClass="form-control">
                              <asp:ListItem Value="0">SELECCIONE</asp:ListItem>
                               <asp:ListItem Value="1">Aprobado</asp:ListItem>
                               <asp:ListItem Value="2">No aprobado</asp:ListItem>
                                  <asp:ListItem Value="3">En espera</asp:ListItem>
                               </asp:DropDownList>
                            </div>
                          </div>

                            <!--permiso de importacion-->
                          <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">permiso importación</label></div>
                                    <div  class="col-12 col-md-9"> <input type="text" id="importacion-input"  name="importacion-input" readonly="readonly" value="per import 27648" placeholder="" class="form-control" /> </div>
                          </div>


                           <!--tipos de vph-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">VPH Encontrado</label></div>
                            <div class="col-12 col-md-9 ">
                             <asp:DropDownList ID="Mresultado" runat="server" ToolTip="caso" CssClass="form-control">
                              <asp:ListItem Value="0">SELECCIONE</asp:ListItem>
                               <asp:ListItem Value="1">VPH-6</asp:ListItem>
                               <asp:ListItem Value="2">VPH-11</asp:ListItem>
                                  <asp:ListItem Value="3">VPH-16</asp:ListItem>
                                 <asp:ListItem Value="4">VPH-18</asp:ListItem>
                                 <asp:ListItem Value="5">VPH-31</asp:ListItem>
                                 <asp:ListItem Value="6">VPH-33</asp:ListItem>
                                 <asp:ListItem Value="7">VPH-35</asp:ListItem>
                                 <asp:ListItem Value="8">VPH-39</asp:ListItem>
                                 <asp:ListItem Value="9">VPH-40</asp:ListItem>
                                 <asp:ListItem Value="10">VPH-42</asp:ListItem>
                                 <asp:ListItem Value="11">VPH-43</asp:ListItem>
                                 <asp:ListItem Value="12">VPH-44</asp:ListItem>
                                 <asp:ListItem Value="13">VPH-45</asp:ListItem>
                                 <asp:ListItem Value="14">VPH-51</asp:ListItem>
                                 <asp:ListItem Value="15">VPH-52</asp:ListItem>                                        
                                 <asp:ListItem Value="16">VPH-53</asp:ListItem>
                                 <asp:ListItem Value="17">VPH-54</asp:ListItem>
                                 <asp:ListItem Value="18">VPH-56</asp:ListItem>
                                 <asp:ListItem Value="19">VPH-58</asp:ListItem>
                                 <asp:ListItem Value="20">VPH-59</asp:ListItem>
                                 <asp:ListItem Value="21">VPH-61</asp:ListItem>
                                 <asp:ListItem Value="22">VPH-68</asp:ListItem>
                                 <asp:ListItem Value="23">VPH-72</asp:ListItem>
                                 <asp:ListItem Value="24">VPH-73</asp:ListItem>
                                 <asp:ListItem Value="25">VPH-81</asp:ListItem>
                               </asp:DropDownList>
                            </div>
                          </div>

                          <!--ensayo de adn-->
                          <!--div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Ensayo de ADN por PCR (eventos especifico)</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="ensayo-input" name="ensayo-input" placeholder="" class="form-control"></div>
                          </!--div>

                           <!--ensayo de adn-->
                          <!--div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Ensayo de ADN por PCR (35s-p)</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="pcr35-input" name="pcr35-input" placeholder="" class="form-control"></div>
                          </!--div>

                               <!--ensayo de adn-->
                          <!--div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Ensayo de ADN por PCR (T-NOS)</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="tnos-input" name="tnos-input" placeholder="" class="form-control"></div>
                          </!--div>

                                 <!--estado-->
                       <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">Estado</label></div>
                            <div class="col-12 col-md-9 ">
                             <asp:DropDownList ID="Mestado" runat="server" ToolTip="caso" CssClass="form-control">
                              <asp:ListItem Value="0">SELECCIONE</asp:ListItem>
                               <asp:ListItem Value="1">Activo</asp:ListItem>
                               <asp:ListItem Value="2">en espera</asp:ListItem>
                                 
                               </asp:DropDownList>
                            </div>
                          </div>
                               
                               <!--usuario procesa--> 
                         <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">usuario que procesa</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Musuarioprocesa" runat="server" Text="" ToolTip="Fecha" CssClass="form-control" placeholder="Ingrese el nombre del usuario que realizo el examen"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Musuarioprocesa" ErrorMessage="Solo letras" ValidationExpression="^[a-z &amp; A-Z]*$"></asp:RegularExpressionValidator>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Musuarioprocesa" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                               </div>
                          </div>


                          <!--usuario valida--> 
                         <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">usuario que valida</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Musuariovalida" runat="server" Text="" ToolTip="Fecha" CssClass="form-control" placeholder="digite el usuario que revisa"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Musuariovalida" ErrorMessage="Solo letras" ValidationExpression="^[a-z &amp; A-Z]*$"></asp:RegularExpressionValidator>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Musuariovalida" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
                               </div>
                          </div>


                          <!--analisis--> 
                         <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">Analisis</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Manalisis" runat="server" Text="" ToolTip="Fecha" CssClass="form-control" placeholder="Ingrese el analalisis"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Manalisis" Display="Dynamic" ErrorMessage="Este Campo es requerido"></asp:RequiredFieldValidator>     
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
                                            <strong class="card-title">Orden VPH</strong>
                                        </div>
                                        <div class="card-body">
                                            <table id="" class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Codigo</th>
                                                         
                                                        <th>Analisis</th>
                                                        
                                                        <th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                     <%
                                                        while(getregistros().Read())
                                                        {
                                                            %>
                                                              <tr><td><%=getregistros()["Id_resultado"] %></td>
                                                                  
                                                                  <td><%=getregistros()["Analisis"] %></td>
                                                                  
                                                                  <td>
                                                                   <a title="Mostrar" onclick="mostrar" href="VerResultadoVPH.aspx?id=<%=getregistros()["Id_resultado"] %>">
                                                                       <i class="ti-eye"></i>
                                                                     </a>
                                                                     <a title="Editar" onclick="editar" href="ModificarResultadoVPH.aspx?id=<%=getregistros()["Id_resultado"] %>">
                                                                       <i class="ti-pencil-alt"></i>
                                                                    </a> 
                                                                      <a href="EliminarResultadoVPH.aspx?id=<%=getregistros()["Id_resultado"] %>" onclick="Eliminar('EliminarResultadoVPH.aspx?id=<%=getregistros()["Id_resultado"] %>');">
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
    <script type="text/javascript" src="../../Content/ListaOrdenOgm.js"></script>
</asp:Content>
