<?php
header("Concent-Type:application/josn");
require("../init.php");
$sql="select * from hf_index_decent_top";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
