<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Backup.aspx.cs" Inherits="Backup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  <style type="text/css">
            	.row{
		    margin-top:40px;
		    padding: 0 10px;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    	
    <ul  class="nav nav-tabs">
			<li class="active">
        <a  href="#1b" data-toggle="tab">Balance Update</a>
			</li>
			<li><a href="#2b" data-toggle="tab">Backup</a>
			</li>
			
	</ul>

    <%--Backup--%>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1b">


<%--                     <div  class ="pull-right form-inline">
        
        <asp:TextBox ID="Search_2" class="form-control" runat="server"></asp:TextBox>
                         
         <div class="btn btn-info glyphicon glyphicon-search">
              <asp:Button ID="Search2_button" runat="server" Text="Search" BackColor="Transparent" BorderWidth="0" OnClick="Search2_button_Click"  />
             
        </div>             
                         
            
    </div>

    <div  class ="pull-left form-inline">
        
        
        
        
         <div class="btn btn-danger glyphicon glyphicon-refresh">
             
             <asp:Button ID="Refresh2" runat="server" Text="Refresh" BackColor="Transparent" BorderWidth="0" OnClick="Refresh2_Click"/>
        </div>            
                
            
    </div>--%>
                  
		  	<div class="row">
			<div class="col-md-12" style="    padding-right: 5px;
    padding-left: 5px;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Balance Update</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="Text1" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
					</div>

             <asp:Repeater ID="R2" runat="server">
                
               

                 <HeaderTemplate>
					<table class="table table-striped table-bordered" cellspacing="0" width="100%"  >
						<thead>
						<tr>
							<th>ID</th>
							<th>Usename</th>
							<th>Total child account</th>
							<th>Left total child</th>
                            <th>right total chield</th>
                            <th>Reffer Acount</th>
                            <th>BALANCE</th>
                            <th>count child</th>
                            <th>parent_pos</th>
                            <th>Edit</th>
                            
							</tr>
					</thead>
                      </HeaderTemplate>
					

					
                  <ItemTemplate>
                        <tbody>
						<tr>
                            <td><%#Eval("a_id") %></td>
							<td><%#Eval("username") %></td>
							<td><%#Eval("total_acc") %></td>
							<td><%#Eval("left_total") %></td>
                            <td><%#Eval("right_total") %></td>
                            <td><%#Eval("parent_acc") %></td>
                            <td><%#Eval("balance") %></td>
                            <td><%#Eval("child_count") %></td>
                            <td><%#Eval("parent_pos") %></td>

                            
							
							<td style="text-align:center;">

                                <div class="btn btn-success glyphicon glyphicon-ok">
                               
                                    <asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("username") %>' OnClick="ENameLinkBtn_Click" runat="server" BackColor="Transparent" BorderWidth="0">Edit</asp:LinkButton>
                                </div>

							</td>
                           
						</tr>
						
                         
                     
					</tbody>
                      </ItemTemplate>

                          
             <FooterTemplate>     
					</table>

                       </FooterTemplate>

                        </asp:Repeater>
                            
				</div>
			</div>
			
		</div>
                           <div style="overflow: hidden; text-align:center;">

<asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
 <ItemTemplate>
  <asp:LinkButton ID="btnPage"
   style="padding:8px;margin:2px;background:#ffa100;border:solid 1px #666;font:8pt tahoma;"
   CommandName="Page" CommandArgument="<%# Container.DataItem %>"
   runat="server" ForeColor="White" Font-Bold="True">
    <%# Container.DataItem %>
  </asp:LinkButton>
 </ItemTemplate>
</asp:Repeater>

</div>
                  
                                 <div  class ="pull-right form-inline">
        
        <asp:TextBox ID="Search_2" class="form-control" runat="server"></asp:TextBox>
                         
         <div class="btn btn-info glyphicon glyphicon-search">
              <asp:Button ID="Search2_button" runat="server" Text="Search" BackColor="Transparent" BorderWidth="0" OnClick="Search2_button_Click"  />
             
        </div>             
                         
            
    </div>

    <div  class ="pull-left form-inline">
        
        
        
        
         <div class="btn btn-danger glyphicon glyphicon-refresh">
             
             <asp:Button ID="Refresh2" runat="server" Text="Refresh" BackColor="Transparent" BorderWidth="0" OnClick="Refresh2_Click"/>
        </div>            
                
            
    </div>


				</div>


                 <%-- dddddd--%>
    


				



                <%--Balance Update--%>
				<div class="tab-pane" id="2b">
                         
    <div  class ="pull-right form-inline">
        
        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
         <div class="btn btn-info glyphicon glyphicon-search">
              <asp:Button ID="Search_Button" runat="server" Text="Search" BackColor="Transparent" BorderWidth="0" OnClick="Search_Button_Click" />
             
        </div>             
                
            
    </div>

    <div  class ="pull-left form-inline">
        
        
         <div class="btn btn-danger glyphicon glyphicon-refresh">
             <asp:Button ID="Export_Button"  runat ="server" Text="Backup" BackColor="Transparent" BorderWidth="0" OnClick="Export_Button_Click1"  />
             
        </div>   
        
        
         <div class="btn btn-info glyphicon glyphicon-refresh">
             
             <asp:Button ID="Refresh" runat="server" Text="Refresh" BackColor="Transparent" BorderWidth="0" OnClick="Refresh_Click1" />
        </div>            
                
            
    </div>
		  	<div class="row">
			<div class="col-md-12" style="    padding-right: 5px;
    padding-left: 5px;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Backup History</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
					</div>

             <asp:Repeater ID="R1" runat="server">
                
               

                 <HeaderTemplate>
					<table class="table table-striped table-bordered" cellspacing="0" width="100%"  >
						<thead>
						<tr>
							<th>ID</th>
							<th>Usename</th>
							<th>Total child account</th>
							<th>Left total child</th>
                            <th>right total chield</th>
                            <th>Reffer Acount</th>
                            <th>BALANCE</th>
                            <th>count child</th>
                            <th>parent_pos</th>
                           <%-- <th>Edit</th>--%>
                            
							</tr>
					</thead>
                      </HeaderTemplate>
					

					
                  <ItemTemplate>
                        <tbody>
						<tr>
                            <td><%#Eval("a_id") %></td>
							<td><%#Eval("username") %></td>
							<td><%#Eval("total_acc") %></td>
							<td><%#Eval("left_total") %></td>
                            <td><%#Eval("right_total") %></td>
                            <td><%#Eval("parent_acc") %></td>
                            <td><%#Eval("balance") %></td>
                            <td><%#Eval("child_count") %></td>
                            <td><%#Eval("parent_pos") %></td>
                           <%-- 
							<td style="text-align:center;">

                               
                             
                                     
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CommandArgument='<%# Eval("username") %>' OnCommand="Button1_Click" />  
                                

							</td>--%>
                           
						</tr>
						
                         
                     
					</tbody>
                      </ItemTemplate>

                          
             <FooterTemplate>     
					</table>

                       </FooterTemplate>

                        </asp:Repeater>
                            
				</div>
			</div>
			
		</div>
				</div>
       

</div>



 






   
</asp:Content>


