<?php
<html>
 <head>
  <title><?php echo $pageTitle; ?></title>
 </head>
 <body>
  <ul>
<?php foreach ($array as $item) {?>
   <li><?php echo $item; ?></li>
<?php } ?>
  </ul>
 </body>
</html>
?>