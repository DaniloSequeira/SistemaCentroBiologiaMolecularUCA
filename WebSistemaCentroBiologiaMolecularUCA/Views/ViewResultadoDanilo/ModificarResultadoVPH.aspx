<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarResultadoVPH.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewResultadoDanilo.ModificarResultadoVPH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card-header">
        <strong class="card-title">Edicion de Resultado VPH</strong>
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

   

                           <!--tipo VPH-->
                          <div class="row form-group ">
                            <div class="col col-md-3 "><label for="select" class=" form-control-label">eventos</label></div>
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
