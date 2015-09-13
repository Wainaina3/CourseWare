<html>
	<head>
		<title> View Course</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="../css/elements.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/style.css">
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
	<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="../js/materialize.min.js"></script>
		<script type="text/javascript" src="../js/materialize.js"></script>
	<script src="../js/my_js.js"></script>
		<script>

			function sendRequest(u){
				// Send request to server
				//u a url as a string
				//async is type of request
				var obj=$.ajax({url:u,async:false});
				
				//Convert the JSON string to object
				var result=$.parseJSON(obj.responseText);

				return result;	//return object
				
			}
			function delete_c(){
				var cid=document.getElementById('cid').value;
				 var theUrl="manipulation.php?cmd=1&id="+cid;
				 var obj=sendRequest(theUrl);
				
				 
				 if(obj.result==1){
				 	
				 window.location="http://localhost/files/courses/server/coursev.php";

				 
				 }
				 else
				 	alert("Nothind")

			}

			
			function update(){
				var cid=document.getElementById('cid').value;
				
				window.location="http://localhost/files/courses/editCourse.php?id="+cid;
			}
		</script>
		<script>
		$( document ).ready(function(){
			$(".button-collapse").sideNav();
		})
	</script>

	</head>
	<body>

			<div class="container">
		<div class="row">

			<div class="col-lg-12"><h2 id="pageheader">Course View</h2></div>
		</div>
		<nav>
			<div class="nav-wrapper" id="navlo">

				<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
				<ul class="right hide-on-med-and-down">
					<li><a href="server/coursev.php">Course Outline</a></li>
					<li><a href="server/faculth.php">Faculty</a></li>
					<li><a href="server/dept_form.php">Department</a></li>
					<li><a href="">Logout</a></li>
				</ul>
				<ul class="side-nav" id="mobile-demo">
					<li><a href="coursv.php">Course Outline</a></li>
					<li><a href="faculth.php">Faculty</a></li>
					<li><a href="dept_form.php">Department</a></li>
					<li><a href="">Logout</a></li>
				</ul>
			</div>
		</nav>
<ul class="nav nav-pills">
  <li role="presentation" class="active" onclick="update()"><a href="#">Update</a></li>
  <li role="presentation" class="active" onclick="delete_c()"><a href="#">Delete</a></li>
</ul>

		<table>
			<tr>
			<td id="content">

				<div id="divStatus" class="status">
					status message
				</div>
				<div id="divContent" class="viewOutline">
					<?php
					include("course_outline.php");

						$obj=new course_outline();

					if(isset($_REQUEST['id'])){

					$course=$_REQUEST['id'];
					echo "<input type='hidden' id='cid' name='cid' value=$course>";

					$result=$obj->getCourseById($course);
					$schedule=$obj->getCourseScheduleById($course);

					echo '<table id="viewOutline" name="viewOutline">';

					echo '<tr> <td><span><span class="headers">Course ID: </span> <span class="inline" id="course_id" name="course_id">'. $result["course_id"] .'</span></span>';

					echo '&nbsp &nbsp &nbsp &nbsp &nbsp <span><span class="headers"> course Name:</span> <span class="inline" id="course_name" name="course_name">'. $result["course_name"].' </span></span></td></tr>';

					echo '<tr><td><span><span class="headers"> Course Objectives:</span> <div id="course_objective" name="course_objective">'. $result["course_objectives"].'</div> </span></td></tr>';

					echo '<tr><td><span><span class="headers"> Course Description:</span> <div id="course_description" name="course_description">'. $result["course_descriptions"].'</div></span></td></tr>';

					echo '<tr><td><span><span class="headers"> Learning Goals: </span><div id="learning_goals" name="learning_goals"> '.$result["learning_goals"].'</div> </span></td></tr>';

					echo '<tr><td> <span> <span class="headers">Course Schedule:</span>
						<table id="course_schedule" name="course_schedule" border="1">
							<tr id="schedule_header" name="schedule_header"> <td> Weeks</td> <td> Topics</td> <td>Readings</td> <td>Milestones</td></tr>';

							while($row=$obj->fetch()){
								echo '<tr>';
								echo '<td>'. $row["weeks"].' </td> <td>'. $row["topics"].' </td> <td>'.$row["readings"].' </td> <td>'.$row["milestones"].'</td>' ;
							}	echo '</tr>';

					echo	'</table>
					</span></td></tr>';


					echo '<tr> <td> <span> <span class="headers">Course Evaluation:</span> <div id="course_evaluation" name="course_evaluation">'. $result["course_evaluations"].'</div></span></td></tr>';

					echo '<tr> <td> <span> <span class="headers">Course Readings: </span> <div id="course_readings" name="course_readings">'.$result["course_readings"].'</div> </span></td></tr>';

					echo '</table>';	

					echo "<div><input type='button' Value='Delete Course' onclick='delete_c($course)'>
					</div>";

				//	echo "<div> <span class='clickspot'> <a href='editCourse.php?id={$result["course_id"]}'>  Edit Course </a> </span> </div>"; //gotoEdit(editCourse.php?id={$result["course_id"]})
					}


					?>
					</div>
				</td>
			</tr>

		</table>

	</div>


	</body>
</html>	