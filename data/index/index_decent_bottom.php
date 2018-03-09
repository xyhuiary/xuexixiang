<?php
header("Content-Type:application/json");
require("../init.php");
$sql="select * from hf_index_decent_bottom";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));