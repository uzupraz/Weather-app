<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css">
</head>
<body>
    <div class="container">
        <div class="navbar">
            <div id="logo">
                <img src="img/logo.png" alt="logo">
                <span id="logo_text">Weather App Online</span>
            </div>
            <div id="search">
                <input type="text" id="search_value" placeholder="Search" name="searchval">
                <button id="search_button" >
                    <i class="fa fa-search"></i>
                </button>
                <button id="view_data">View Saved Data</button>
            </div>
        </div>
        <div class="workingarea">
            <div class="main">
                <div class="city">
                    <h1><span id="cityname"></span></h1>
                    <span id="datetime"></span>
                    <span id="coordinates"></span>
                </div>
                <div class="weather">
                    <img id="weatherIcon" src="" alt="Weather icon">
                    <div id="temperature"></div>
                </div>
            </div>
            
            
        </div>
        <div class="tiles">
            <div class="grid">
                <div class="cell">
                    <div class="top"><i class="fas fa-thermometer-full"></i> FEELS LIKE</div>
                    <div class="mid" id="feelslike">main</div>
                </div>
                <div class="cell">
                    <div class="top"><i class="fas fa-tint"></i>HUMIDITY</div>
                    <div class="mid"><span id="humidity"></span></div>
                </div>
                <div class="cell">
                    <div class="top"><i class="fas fa-wind"></i>WIND</div>
                    <div class="mid">
                        <img id="compass" src="img/compass.png" alt="compass" />
                        <img id="arrow" src="img/arrow.png" alt="arrow" />
                        <div id="wind-info" class="wind-info"></div>
                    </div>
                </div>
                <div class="cell">
                    <div class="top"><i class="fas fa-tachometer-alt"></i>PRESSURE</div>
                    <div class="mid">
                        <div id="gauge-container">
                            <img id="gauge" src="img/meter.png" alt="gauge">
                            <img id="arrow_p" src="img/meterhead.png" alt="arrow">
                            <span id="pressure"></span>
                        </div>
                    </div>
                </div>
                <div class="cell">
                    <div class="top"><i class="fas fa-eye"></i>VISIBILITY</div>
                    <div class="mid"><span id="visibility"></span></div>
                </div>
                <div class="cell">
                    <div class="top"><i class="fas fa-thermometer-full"></i>TEMPERATURE</div>
                    <div class="mid">
                        <div class="field"><i class="fas fa-temperature-high"></i>H: <span id="maxtemp"></span></div>
                        <div class="field"><i class="fas fa-temperature-low"></i>L: <span id="mintemp"></span></div>
                    </div>
                </div>
            </div>
            <div class="merger">
                <iframe scrolling="no" marginheight="0" marginwidth="0" frameborder="0" id="map_frame" src="">
                </iframe>
            </div>
        </div>
    </div>
    <script src="script.js"></script>


</body>
</html>