<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Backup Test</title>

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
</head>
<body>
    <form id="form1" runat="server">
  	  	<div class="row">
			<div class="col-md-12" style="    padding-right: 5px;
    padding-left: 5px;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Transation History</h3>
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
                            <%--<th>Edit</th>--%>
                            
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

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    </form>
</body>
</html>
