<html>
<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Project Management Tool</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="../css/styles.css" rel="stylesheet">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
		 <%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<link href="../css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="../css/demo_table.css" rel="stylesheet" type="text/css" />       
<link href="../css/demo_table_jui.css" rel="stylesheet" type="text/css" />

<link href="../css/jquery-ui-1.8.24.custom.css" rel="stylesheet" type="text/css" media="all" />
<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/jquery.dataTables.js" type="text/javascript"></script>
 <script type="text/javascript">
        $(document).ready(function () {
            $("#companies").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true               
            });
        });
 </script>
</head>
<body id="dt_example">
<!-- Header -->
<div class="alert alert-info" role="alert">
  <a href="projects" class="alert-link">Project Management Tool</a>
</div>
<!-- /Header -->

<!-- Main -->
<div class="container">
  
  <!-- upper section -->
  <div class="row">
	<div class="col-sm-3">
      <!-- left -->
      
      <hr>
      
      <ul class="nav nav-stacked">
          <li><a href="progresslist"><i class="glyphicon glyphicon-list-alt"></i>Weekly Progress</a></li>
          <li><a href="productionchangeform"><i class="glyphicon glyphicon-book"></i>Production Change</a></li>
          <li><a href="piechart"><i class="glyphicon glyphicon-ok"></i> Google Chart</a></li>
          <li><a href="list"><i class="glyphicon glyphicon-ok"></i> view list</a></li>
          <li><a href="buglist"><i class="glyphicon glyphicon-ok"></i> Bugs</a></li>
          <li><a href="list2"><i class="glyphicon glyphicon-ok"></i>View Bug List</a></li>
      </ul>
      
      <hr>
      
  	</div><!-- /span-3 -->
    <div class="col-sm-9">
      	
      <!-- column 2 -->	
       
            
       <hr>
      
	   <div class="row">
            <!-- center left-->	
         	<div class="col-md-12">
			   
              
              <hr>
      
	   <div class="row">
            <!-- center left-->	
         	<div class="col-md-12">
			   
              
              <hr>
              
              <div class="panel panel-default">
                  <div class="panel-heading"><h4>VIEW PROJECT LIST</h4></div>
                  <div class="panel-body">
                    
               
               <!-- ----content starts -->
               
               
       
               
 


	
	<div class="table-responsive">
	<table   id="companies" class="display">

		<thead>
			<tr style="background-color:#ddd">
				<th>Priority</th>
				<th>Issues</th>
				<th>ReportedBy</th>
				<th>ReportedDate</th>
				<th>Action</th>
				
				
			</tr>
		</thead>
		<%
		
			List<Entity> customersbug = (List<Entity>)request.getAttribute("customerList");
		    for(Entity e : customersbug){
		     
		%>
			<tr>
<td><%=e.getProperty("Priority")%></td>
<td><%=e.getProperty("Issues") %></td>
<td><%=e.getProperty("ReportedBy") %></td>
<td><%=e.getProperty("ReportedDate") %></td>

<td><a href="update1/<%=e.getProperty("Priority")%>"><span class="glyphicon glyphicon-edit"></span>Update</a> | <a href="delete/<%=e.getProperty("Priority")%>"><span class="glyphicon glyphicon-trash"></span>Delete</a></td>
			</tr>
			
		
			
		<%
			}
		%>
		
		
		
		
		
		</table> 
		        </div>
		        </div> </table>

	
	<footer class="text-center"> Google Apps |  Sigma Aldrich </footer>
	
               
	</body>
</html>


	