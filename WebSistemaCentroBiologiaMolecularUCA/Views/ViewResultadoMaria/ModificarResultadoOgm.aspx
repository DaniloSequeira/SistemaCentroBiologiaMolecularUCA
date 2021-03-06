﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarResultadoOgm.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewResultadoMaria.ModificarResultadoOgm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card-header">
        <strong class="card-title">Edicion de Resultado OGM</strong>
           </div>  
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

                            <!--tipo muestra-->
                          <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">tipo muestra</label></div>
                                    <div  class="col-12 col-md-9"> <input type="text" id="muestra-input"  name="muestra-numero" readonly="readonly" value="Arroz" placeholder="" class="form-control" /> </div>
                      
                          </div>

                           <!--tipo proteinas-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">eventos</label></div>
                            <div class="col-12 col-md-9 ">
                             <asp:DropDownList ID="Mresultado" runat="server" ToolTip="caso" CssClass="form-control">
                              <asp:ListItem Value="0">SELECCIONE</asp:ListItem>
                               <asp:ListItem Value="1">Cry1Ab</asp:ListItem>
                               <asp:ListItem Value="2">RR</asp:ListItem>
                                  <asp:ListItem Value="3">Cry3Bb</asp:ListItem>
                                 <asp:ListItem Value="4">Cry1F</asp:ListItem>
                                 <asp:ListItem Value="5">LL pat</asp:ListItem>
                                 <asp:ListItem Value="6">Cry34</asp:ListItem>
                                 <asp:ListItem Value="7">mCry3A</asp:ListItem>
                                 <asp:ListItem Value="8">LL bar</asp:ListItem>
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
                               <asp:ListItem Value="2">en esperaa</asp:ListItem>
                                 
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
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">usuario que procesa</label></div>
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
                                                        <asp:HiddenField runat="server" ID="Id_resultado" />
                                                        <asp:Button id="enviar" runat="server" Text="Modificar" CssClass="btn btn-primary" OnClick="EditarFormulario"/>
                                                 </div>
                                              </form>
                                            </div>
                                         </div>



                                    
               <script type="text/javascript" src="../../Content/ListaOrdenOgm.js"></script>

     <script  type="text/javascript">
        window.onload = function () {
            edit( '<%=re.Fecha_procesamiento%>', '<%=re.Validacion%>', '<%=re.Parametros%>','<%=re.Estado%>',
                  '<%=re.Usuario_procesa%>','<%=re.Usuario_valida%>','<%=re.Analisis%>')
        };
    </script>  
               

</asp:Content>
