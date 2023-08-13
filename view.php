<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include 'connection.php';

// Checks if cityname is received or not
if(isset($_POST['cityname'])) {
    // Fetches the cityname passed through POST method
    $cityname = $_POST['cityname'];
    if ($cityname) {
        // Access the data, for example:
        $stmt = $mysqli->prepare("SELECT * FROM WeatherData WHERE CityName = ?");
        $stmt->bind_param("s", $cityname); // "s" denotes a string parameter
        $stmt->execute();

        $result = $stmt->get_result();
        if ($result && $result->num_rows === 0) {
            echo "No saved data for this city";
            die;
        } elseif (!$result) {
            echo "Error executing the query: " . $mysqli->error;
            die;
        }
    } else {
        echo "Error fetching the weather data.";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather Data</title>
    <style>
        table{
            font: size 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        tr:nth-child(odd){
            background-color: rgb(225, 225, 225);
        }
        td,th{
            border: 1px;
            padding: 10px;
            margin:5px;
        }
        th{
            background-color: rgb(178, 178, 178);
        }

    </style>
</head>
<body>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>City Name</th>
            <th>Date</th>
            <th>Temperature</th>
            <th>Feels Like</th>
            <th>Humidity</th>
            <th>Pressure</th>
            <th>Visibility</th>
            <th>Wind Degree</th>
            <th>Wind Speed</th>
            <th>Max Temp</th>
            <th>Min Temp</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Weather Info</th>
        </tr>
    </thead>
    <tbody>
        <?php

        // Fetches the datas per row 
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>{$row['ID']}</td>";
            echo "<td>{$row['CityName']}</td>";
            echo "<td>{$row['WeatherDate']}</td>";
            echo "<td>{$row['Temperature']}</td>";
            echo "<td>{$row['FeelsLike']}</td>";
            echo "<td>{$row['Humidity']}</td>";
            echo "<td>{$row['Pressure']}</td>";
            echo "<td>{$row['Visibility']}</td>";
            echo "<td>{$row['WindDeg']}</td>";
            echo "<td>{$row['WindSpeed']}</td>";
            echo "<td>{$row['MaxTemp']}</td>";
            echo "<td>{$row['MinTemp']}</td>";
            echo "<td>{$row['Latitude']}</td>";
            echo "<td>{$row['Longitude']}</td>";
            echo "<td>{$row['WeatherInfo']}</td>";
            echo "</tr>";
        }
        ?>
    </tbody>
</table>

</body>
</html>
