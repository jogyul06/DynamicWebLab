<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file = "nav.jsp" %>
<%@include file = "nav2.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Blossoms</title>
    <style>
    @keyframes blossom {
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
    background-color: #FF69B4;
    margin: 0;
    padding: 0;
    overflow: hidden; 
}

i {
    position: absolute;
    top: -50px;
    width: 10px; 
    height: 20px; 
    background-color: #FAD0D0; 
    border-radius: 50%; 
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
    pointer-events: none; 
    animation: blossom linear infinite; 
}
    
    </style>
</head>
<body>
    <script>
    function createBlossoms() {
        let amount = 100;
        let body = document.querySelector('body');
        let i = 0;

        while (i < amount) {
            let blossom = document.createElement('i');
            let size = Math.random() * 5 + 5; 
            let posX = Math.floor(Math.random() * window.innerWidth);
            let delay = Math.random() * -20;
            let duration = Math.random() * 5 + 5;

            blossom.style.width = size + 'px';
            blossom.style.height = size * 2 + 'px'; 
            blossom.style.left = posX + 'px';
            blossom.style.animationDelay = delay + 's';
            blossom.style.animationDuration = duration + 's';

            body.appendChild(blossom);
            i++;
        }
    }

    createBlossoms();

    window.onresize = function() {
        let blossoms = document.querySelectorAll('i');
        for (let i = 0; i < blossoms.length; i++) {
            blossoms[i].remove();
        }
        createBlossoms();
    }
    
    


    </script>
</body>
</html>

