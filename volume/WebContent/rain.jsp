<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file = "nav.jsp" %>
<%@include file = "nav2.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Summer Rain</title>
    <style>
    @keyframes rain {
    0% {
        transform: translateY(-20px);
        opacity: 0;
    }
    50% {
        opacity: 1;
    }
    100% {
        transform: translateY(calc(100vh + 50px));
        opacity: 0;
    }
}

body {
    background-color: #408080; 
    margin: 0;
    padding: 0;
    overflow: hidden;
}

i {
    position: absolute;
    top: -20px; 
    width: 1px;
    height: 30px;
    background-color: #82C0CC;
    pointer-events: none; 
    animation: rain linear infinite; 
}
    
    </style>
</head>
<body>
    <script>
    function createRain() {
        let amount = 150; 
        let body = document.querySelector('body');
        let i = 0;

        while (i < amount) {
            let raindrop = document.createElement('i');
            let size = Math.random() * 1.5 + 0.5; 
            let posX = Math.floor(Math.random() * window.innerWidth);
            let delay = Math.random() * -10;
            let duration = Math.random() * 2 + 3;

            raindrop.style.width = size + 'px';
            raindrop.style.height = size * 10 + 'px';
            raindrop.style.left = posX + 'px';
            raindrop.style.animationDelay = delay + 's';
            raindrop.style.animationDuration = duration + 's';

            body.appendChild(raindrop);
            i++;
        }
    }

    createRain();

    window.onresize = function() {
        let raindrops = document.querySelectorAll('i');
        for (let i = 0; i < raindrops.length; i++) {
            raindrops[i].remove();
        }
        createRain();
    }
    </script>
</body>
</html>
