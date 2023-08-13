<?php
include 'connection.php';

if($_POST){
    // Receives the json data using POST method
    $weatherdata=$_POST['weatherdata'];
}

// Converts data in php array format
$data = json_decode($weatherdata, true);
if ($data) {
    // Access the data for storing
    insert_data($data, $mysqli);
} else {
    echo "Error fetching the weather data.";
}

function insert_data($data, $mysqli) {
    // Stores datas in variables
    $cityname = $data['name'] . "," . $data['sys']['country'];
    $datetime = date('Y-m-d H:i:s', $data['dt']);  // Convert UNIX timestamp to date-time format
    $temp = $data['main']['temp'];
    $feelslike = $data['main']['feels_like'];
    $humidity = $data['main']['humidity'];
    $pressure = $data['main']['pressure'];
    $visibility = ($data['visibility'] / 1000);
    $windeg = isset($data['wind']['deg']) ? $data['wind']['deg'] : 0;  // Default to 0 if not set
    $windspeed = $data['wind']['speed'];
    $maxtemp = $data['main']['temp_max'];
    $mintemp = $data['main']['temp_min'];
    $latitude = $data['coord']['lat'];
    $longitude = $data['coord']['lon'];
    $info = $data['weather'][0]['main'];

    // Prepares the sql query for execution with some parameters
    $stmt = $mysqli->prepare("INSERT INTO WeatherData(CityName, WeatherDate, Temperature, FeelsLike, Humidity, Pressure, Visibility, WindDeg, WindSpeed, MaxTemp, MinTemp, Latitude, Longitude, WeatherInfo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    if (!$stmt) {
        die("Statement preparation failed: " . $mysqli->error);
    }

    // Bind the parameters
    $stmt->bind_param('ssdddddiddddds', $cityname, $datetime, $temp, $feelslike, $humidity, $pressure, $visibility, $windeg, $windspeed, $maxtemp, $mintemp, $latitude, $longitude, $info);

    // Execute the statement
    if ($stmt->execute()) {
        echo "Data inserted successfully!";
    } else {
        echo "Error inserting data: " . $stmt->error;
    }
    // Close the statement
    $stmt->close();
}
?>
