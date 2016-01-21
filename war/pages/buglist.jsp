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
  <a href="" class="alert-link">Project Management Tool</a>
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
                  <div class="panel-heading"><h4>Bugs</h4></div>
                  <div class="panel-body">
                    
               
               <!-- ----content starts -->
               
               
               
               
              <div class="container">
  
  <form class="form-horizontal"method="post" action="buglist" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="Priority">Priority</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" name="Priority"  id="Priority" placeholder="Enter Priority">
    </div>
    </div>
    <div class="form-group">
     <label class="control-label col-sm-2" for="Issues">Issues: :</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" name="Issues" id="Issues" placeholder="Enter Issues">
    </div></div>



<div class="form-group">
       <label class="control-label col-sm-2" for="ReportedBy">Reported By</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="ReportedBy"  id="ReportedBy" placeholder="Enter Reported By ">
    </div></div>


<div class="form-group">
     <label class="control-label col-sm-2" for="ReportedDate">Reported Date</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="ReportedDate"  id="ReportedDate" placeholder="Enter Reported Date">
    </div></div>

<div class="form-group">
     <label class="control-label col-sm-2" for="PersonTesting">Person Testing</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="PersonTesting"  id="PersonTesting" placeholder="Enter Person Testing">
    </div></div>
    
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="DueDate">Due Date</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="DueDate"  id="DueDate" placeholder="Enter Due Date">
    </div></div>
    
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="Reviseddate">Revised date</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Reviseddate"  id="Reviseddate" placeholder="Enter Revised Date">
    </div></div>

<div class="form-group">
     <label class="control-label col-sm-2" for="CorrectedDate ">Corrected Date </label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="CorrectedDate"  id="CorrectedDate" placeholder="Enter Correct Date">
    </div></div>
    
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="Resolvedby">Resolved by</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Resolvedby"  id="Resolvedby" placeholder="Enter Resolved By">
    </div></div>


<div class="form-group">
     <label class="control-label col-sm-2" for="Tester">Tester</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Tester"  id="Tester" placeholder="Enter Tester">
    </div></div>



<div class="form-group">
     <label class="control-label col-sm-2" for="Status">Status</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Status"  id="Status" placeholder="Enter Status">
    </div></div>
    
    
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="DateReTestedbyTester">Date Re-Tested by Tester</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="DateReTestedbyTester"  id="DateReTestedbyTester" placeholder="Enter Date Retested By Tester">
    </div></div>
    
    
    
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="Outcome">Outcome </label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Outcome"  id="Outcome" placeholder="Enter Total No. of Projects">
    </div></div>
    
    <div class="form-group">
     <label class="control-label col-sm-2" for="Comments">Comments</label>
    <div class="col-sm-4">  <input type="text" class="form-control" name="Comments"  id="Comments" placeholder="Enter Total No. of Projects">
    </div></div>
    
    




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


	 
