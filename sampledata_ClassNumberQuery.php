<?php
$connection = mysqli_connect("localhost", "dbtest", "dbtest", "dbtest");
 
$selectvalue = mysqli_real_escape_string($connection, $_GET['svalue']);
 
mysqli_select_db($connection, "dbtest");
$result = mysqli_query($connection, "SELECT classes.class_Code FROM classes WHERE classes.Student_Count = '$selectvalue'");
 
echo '<option value="">Please select...</option>';
    while ($row = mysqli_fetch_array($result))
  {
    echo '<option value="'.$row['class_Code'].'">' . $row['class_Code'] . "</option>";
    //echo $row['drink_type'] ."<br/>";
  }
 
mysqli_free_result($result);
mysqli_close($connection);
 
?>
<!DOCTYPE html>
<html>
    <head><h1>BREASTS</h1>
        <script type="text/javascript" src="jquery-1.3.2.js"></script>
        <script>
            $(document).ready(function(){
                $("button").click(function(){
                    $("p").hide();
                });
            });
            </script>
            <script>$(document).ready(function($) {
                var list_target_id = 'list-target'; //first select list ID
                var list_select_id = 'list-select'; //second select list ID
                var initial_target_html = '<option value="">Please select a colour...</option>'; //Initial prompt for target select
               
                $('#'+list_target_id).html(initial_target_html); //Give the target select the prompt option
               
                $('#'+list_select_id).change(function(e) {
                  //Grab the chosen value on first select list change
                  var selectvalue = $(this).val();
               
                  //Display 'loading' status in the target select list
                  $('#'+list_target_id).html('<option value="">Loading...</option>');
               
                  if (selectvalue == "") {
                      //Display initial prompt in target select if blank value selected
                     $('#'+list_target_id).html(initial_target_html);
                  } else {
                    //Make AJAX request, using the selected value as the GET
                    $.ajax({url: 'ajax-getvalues.php?svalue='+selectvalue,
                           success: function(output) {
                              //alert(output);
                              $('#'+list_target_id).html(output);
                          },
                        error: function (xhr, ajaxOptions, thrownError) {
                          alert(xhr.status + " "+ thrownError);
                        }});
                      }
                  });
              });
            </script>
    </head>
    <body>
        <h2>This is pretty cool</h2>
        <div>
            <p>The quike brown fox is here</p>
            <button>Click me to hide paragraphs</button>

        </div>




<select name="list-select" id="list-select">
     <option value="">Please select..</option>
     <option value="tea">tea</option>
     <option value="coffee">coffee</option>
     <option value="water">water</option>
</select>
 
<select name="list-target" id="list-target"></select>
<p>URL+?svalue=15</p>
<p> Pass the aove string into url script value. This queires the database > class> and bring up all classes with student numbers matching the query value.  </p>
</body>
</html>