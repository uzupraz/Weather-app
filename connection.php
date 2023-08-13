<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "WeatherApp";

// Create connection
$mysqli = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if ($mysqli) {
    debug_to_console("Connection Successful");
    
}
else{
    die("Connection failed: " . $mysqli->connect_error);
}

function debug_to_console($data) {
    $output = $data;
    if (is_array($output))
        $output = implode(',', $output);

    echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
}
?>

