<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file = "nav.jsp" %>
<%@include file = "nav2.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Snowfall</title>
    <style>
    @keyframes snow {
    0% {
        transform: translateY(-50px) rotate(0deg);
        opacity: 0;
    }
    50% {
        opacity: 1;
    }
    100% {
        transform: translateY(calc(100vh + 50px)) rotate(360deg);
        opacity: 0;
    }
}

body {
    background-color: #001f3f; 
    margin: 0;
    padding: 0;
    overflow: hidden; 
}

i {
    position: absolute;
    top: -50px; 
    width: 5px;
    height: 5px;
    background-color: white;
    border-radius: 50%; 
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
    pointer-events: none; 
    animation: snow linear infinite; 
}
    
    </style>
</head>
<body>
    <script>
    function createSnow() {
        let amount = 100;
        let body = document.querySelector('body');
        let i = 0;

        while (i < amount) {
            let snowflake = document.createElement('i');
            let size = Math.random() * 5 + 2; 
            let posX = Math.floor(Math.random() * window.innerWidth);
            let delay = Math.random() * -20;
            let duration = Math.random() * 5 + 5;

            snowflake.style.width = size + 'px';
            snowflake.style.height = size + 'px';
            snowflake.style.left = posX + 'px';
            snowflake.style.animationDelay = delay + 's';
            snowflake.style.animationDuration = duration + 's';

            body.appendChild(snowflake);
            i++;
        }
    }

    createSnow();

    window.onresize = function() {
        let snowflakes = document.querySelectorAll('i');
        for (let i = 0; i < snowflakes.length; i++) {
            snowflakes[i].remove();
        }
        createSnow();
    }
    </script>
</body>
</html>

