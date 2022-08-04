<?php
header("content-type: application/json");
$assets = [];
foreach($a = scandir("../images/seasonal") as $img)
    if($img != "." && $img != ".." )
        $assets[] = (isset($_SERVER["HTTPS"]) ? 'https' : 'http') . "://" . $_SERVER['SERVER_NAME'] . "/images/seasonal/" . $img;
echo json_encode($assets, JSON_PRETTY_PRINT);
?>
