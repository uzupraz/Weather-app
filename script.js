window.onload = () => {
    const api = "18311b05171c88fe686145a5e0f3fc10";
    const default_city = "Prichard,USA";

    //selectors
    let cityname = document.getElementById("cityname");
    let weatherIcon = document.getElementById("weatherIcon");
    let temp = document.getElementById("temperature");
    let feelslike = document.getElementById("feelslike");
    let pressure = document.getElementById("pressure");
    let humidity = document.getElementById("humidity");
    let visibility = document.getElementById("visibility");
    let mintemp = document.getElementById("mintemp");
    let maxtemp = document.getElementById("maxtemp");
    let search_value = document.getElementById("search_value");

    //program starts here with the value of the default city
    start(default_city);
    //this makes the search bar work even when you tap enter on your keyboard
    search_value.addEventListener("keypress", function(event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("search_button").click();
        }
    });
    //when the search value is provided, provides the weather data of the city
    document.getElementById('search_button').addEventListener('click',()=>{
        let city=document.getElementById('search_value').value;
        start(city);
    });

    //fetches the data using api
    function start(city){
        fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api}&units=metric`)
        .then((response) => {
            if (!response.ok) { 
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then((data)=>main(data))
        .catch((error)=>errorHandler(error));
    }
    
    //this is to handle any error if any occur
    function errorHandler(error){
        console.log('Fetch Error:', error);
        alert(`Error: ${error.message}`);
    }

    //this block updates the values and displays them in the program
    function main(data){
        console.log(data);
        weatherIcon.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}@4x.png`;
        cityname.innerHTML = data.name+", "+data.sys.country;
        datetime.innerHTML = convertTimeStamp(data.dt); 
        temp.innerHTML = parseInt(data.main.temp) + "°C";
        feelslike.innerHTML = parseInt(data.main.feels_like) + "°C";
        humidity.innerHTML = data.main.humidity+"%";
        pressure.innerHTML = data.main.pressure;
        visibility.innerHTML = parseInt(data.visibility/1000) + "km";
        windCompass(data.wind.deg,data.wind.speed)
        maxtemp.innerHTML = parseInt(data.main.temp_max) + "°";
        mintemp.innerHTML = parseInt(data.main.temp_min) + "°";
        mapCoords(data.coord.lat, data.coord.lon);
        backGround(data.weather[0].main);
        setPressure(data.main.pressure);
    }

    //this is to get the date from the api
    function convertTimeStamp(timestamp){
        const date = new Date(timestamp * 1000);
    
        const options = {
            weekday: "long",
            day: "numeric",
            month: "long",
            year: "numeric",
        }
        return date.toLocaleString("en-US", options)
    }

    //this is to display the coordinates of the map using an embedded map from openstreetmap
    function mapCoords(lat, lon, delta = 0.1) {
        var latNorth = parseFloat(lat) + delta;
        var latSouth = parseFloat(lat) - delta;
        var lonEast = parseFloat(lon) + delta;
        var lonWest = parseFloat(lon) - delta;
        map_frame.src=`https://www.openstreetmap.org/export/embed.html?bbox=${lonWest}%2C${latSouth}%2C${lonEast}%2C${latNorth}&amp;layer=mapnik`;
    }

    //this is to operate the compass and display the wind speed in the program
    function windCompass(windDirection, windSpeed) {
        document.getElementById('arrow').style.transform = `rotate(${windDirection}deg)`;
        document.getElementById('wind-info').innerText = `${windSpeed}`;
    }

    //this function updates the background as per the weather condition
    function backGround(value){
        console.log(value);
        if (value=='Clear'){
            document.body.style.backgroundImage="url(img/clear.jpeg)";
            console.log("clear img");
        }
        else if (value=='Clouds'){
            document.body.style.backgroundImage="url(img/clouds.jpeg)";
        }
        else if (value=='Rain'){
            document.body.style.backgroundImage="url(img/rain.gif)";
        }
        else if (value=='Mist'){
            document.body.style.backgroundImage="url(img/mist.gif)"; 
        }
        else if (value=='Thunerstorm'){
            document.body.style.backgroundImage="url(img/thunderstorm.gif)"; 
        }
    }

    //this block updates the gauge in the pressure cell
    function setPressure(pressure) {
        let minPressure = 813;
        let maxPressure = 1213;
        let minRotation = 0;
        let maxRotation = 270;  
        let arrowp = document.getElementById('arrow_p');
        let rotation = ((pressure - minPressure) / (maxPressure - minPressure)) * (maxRotation - minRotation) + minRotation;
        arrowp.style.transform = `rotate(${rotation}deg)`;
    }
}