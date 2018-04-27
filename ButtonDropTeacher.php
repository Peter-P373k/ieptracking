<?php
require 'connect.php';
    $result = $conn->query("select Email_address, First_name, Last_name from TeacherData");
    
    echo "<html>";
    echo "<body>";
    echo "<select name='Email_adddress' id='email-list' onchange='showUser(this.value)'>";

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {

                  unset($email, $first,$last);
                  $email = $row['Email_adddress'];
                  $first = $row['First_name']; 
				          $last = $row['Last_name'];
                  echo '<option value="'.$email.'">'.$first."-".$last.'</option>';
                 
}

    echo "</select>";
    echo "</body>";
    echo "</html>";
?>
<!DOCTYPE html>
<html>
<head>
<script>
function showUser(str) {
  if (str=="") {
    document.getElementById("txtHint").innerHTML="";
    return;
  } 
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("txtHint").innerHTML=this.responseText;
    }
  }
  xmlhttp.open("GET","getteacher.php?q="+str,true);
  xmlhttp.send();
}
</script>
</head>
<body>
<br>
<div id="txtHint"><b>Person info will be listed here.</b></div>

</body>
</html>
