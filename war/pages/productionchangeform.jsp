<!DOCTYPE html>
<html lang="en">
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
		 
	</head>
	<body>
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
              
              <div class="panel panel-default">
                  <div class="panel-heading"><h4>ADD CONSULTANTS</h4></div>
                  <div class="panel-body">
                    
               
               <!-- ----content starts -->
               
               
               
               
              <div class="container">
  
  <form class="form-horizontal"method="post" action="productionchangeform" role="form">
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="ProjectName">Project Name :</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" name="ProjectName" id="ProjectName" placeholder="Enter Email ID">
    </div></div>



<div class="form-group">
       <label class="control-label col-sm-2" for="Assignee">Assignee</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Assignee"  id="Assignee" placeholder="Enter Contact No ">
    </div></div>


<div class="form-group">
     <label class="control-label col-sm-2" for="ChangeDetailsTextarea">Change Details:</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="ChangeDetailsTextarea"  id="ChangeDetailsTextarea" placeholder="Enter Total No. of Projects">
    </div></div>



 <div class="form-group">
  <label class="control-label col-sm-2" for="LeadName">Lead Name</label>
  <div class="col-sm-4">
    <select id="LeadName" name="LeadName" class="form-control">
      <option>Bipin</option>
      <option>Nitin</option>
      <option>Abhishek</option>
      <option>Rahul</option>
    </select> 
  </div>
</div>
    



<div class="form-group">
  <label class="control-label col-sm-2" for="LeadApproval">Lead Approval</label>
  <div class="col-sm-4">
    <select id="LeadApproval" name="LeadApproval" class="form-control">
      <option>Yes</option>
      <option>No</option>
      
    </select> 
  </div>
</div>





<input type="submit" class="save" class="btn btn-primary" title="Save" value="Save" />
  </form>
</div>

               
                 <!-- ----content ends
               
               
                Table structure for table `project_details`
 

   project_details 
  `P_ID`  
  `P_NAME`
  `PER_COMPLETED`
  `RESOURCE_NAME`
  `RESOURCE_EMAIL` varchar(20) DEFAULT NULL,
  `DEV_URL`
  `TEST_URL`
  `PROD_URL`
  `P_STATUS`
  `APP_TYPE`
  `REMARK`
  `STASH`
  `START_DATE`
  `END_DATE`
  `EXP_GO_LIVE_DATE`
  `ACTUAL_GO_LIVE_DATE`
  `COMPLEXITY_LEVEL`
  `SPECS_DOC`
  `DB_DESIGN`
  `FRONT_END_FRAMEWORK`
  `CSS_FRAMEWORK`
  `DB_USED`
  `API_ACCES_USED`
  `CLIENT_ID`
  `JAVA_VERSION`-->
 
 
               
               
               
               

                  </div><!--/panel-body-->
              </div><!--/panel-->                     
              
          	</div><!--/col-->
         
            <!--center-right-->
        	 
     
       </div><!--/row-->
  	</div><!--/col-span-9-->
    
  </div><!--/row-->
  <!-- /upper section -->
  
  <!-- lower section -->
  <div class="row">
    
    
    
    
     
    
  </div><!--/row-->
  
</div><!--/container-->
<!-- /Main -->


<footer class="text-center"> Google Apps |  Sigma Aldrich </footer>


 



  
	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
	</body>
</html>


	 
