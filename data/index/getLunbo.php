<?php
header("Content-Type:application/json");
require_once("../init.php");
$sql="select * from hf_index_lunbo";
$result=mysqli_query($conn,$sql);
if(mysqli_error($conn)){
  echo mysqli_error($conn);
}
echo json_encode(mysqli_fetch_all($result,1));