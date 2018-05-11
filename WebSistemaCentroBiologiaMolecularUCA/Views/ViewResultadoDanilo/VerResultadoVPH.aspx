<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerResultadoVPH.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ViewResultadoDanilo.BuscarResultadoVPH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card-header">
        <strong class="card-title">Vista de resultado ogm</strong>
           </div>  
             <div class="card">
               <div class="card-body card-block">
                 <form action="get" method="post" enctype="multipart/form-data" class="form-horizontal" runat="server">


                     <!--Comienzo de los formulario-->
                        <!--fecha-->
                           <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">Fecha</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Mfecha" runat="server" Text="" ToolTip="Fecha" CssClass="form-control" placeholder="Ingrese la fecha"></asp:TextBox>
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

                         
                           <!--tipo proteinas-->
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



                                 <asp:ListItem Value="8">LL bar</asp:ListItem>


                               </asp:DropDownList>
                            </div>
                          </div>

                     

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
                               
                               <!--usuario valida--> 
                         <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">usuario que valida</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Musuariovalida" runat="server" Text="" ToolTip="usuariovalida" CssClass="form-control" placeholder="Ingrese el nombre del usuario que revisa"></asp:TextBox>
                               </div>
                          </div>


                          <!--usuario procesa--> 
                         <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">usuario que procesa</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Musuarioprocesa" runat="server" Text="" ToolTip="usuarioprocesa" CssClass="form-control" placeholder="digite el usuario que realizo el examen"></asp:TextBox>
                               </div>
                          </div>


                          <!--analisis--> 
                         <div class="row form-group ">
                            <div class="col col-md-3 "><label for="password-input" class=" form-control-label">Analisis</label></div>
                            <div class="col-12 col-md-9">
                           <asp:TextBox ID="Manalisis" runat="server" Text="" ToolTip="analisis" CssClass="form-control" placeholder="Ingrese la fecha"></asp:TextBox>
                               </div>
                          </div>
                          


             <div class="modal-footer">
                                                             <asp:HiddenField runat="server" ID="Id_orden" />
                                                             <a class="btn btn-outline-success btn-lg btn-block" href="../../Views/ViewResultadoDanilo/AgregarResultadoVPH.aspx">Regresar</a>  
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
