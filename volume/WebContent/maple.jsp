<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file = "nav.jsp" %>
<%@include file = "nav2.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autumn Leaves</title>
    <style>
    @keyframes leaf-fall {
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
        background-color: #FFBE00;
        margin: 0;
        padding: 0;
        overflow: hidden; 
    }

    .leaf {
        position: absolute;
        width: 0;
        height: 0;
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-bottom: 20px solid #FF4500;
        transform-origin: bottom center;
        animation: leaf-fall linear infinite;
    }

    </style>
</head>
<body>
    <script>
    function createLeaves() {
        let amount = 100;
        let body = document.querySelector('body');

        for (let i = 0; i < amount; i++) {
            let leaf = document.createElement('div');
            leaf.className = 'leaf';
            leaf.style.left = Math.random() * window.innerWidth + 'px';
            leaf.style.animationDuration = Math.random() * 5 + 5 + 's';
            leaf.style.animationDelay = Math.random() * -20 + 's';
            body.appendChild(leaf);
        }
    }

    createLeaves();

    window.onresize = function() {
        let leaves = document.querySelectorAll('.leaf');
        leaves.forEach(leaf => leaf.remove());
        createLeaves();
    }
    </script>
</body>
</html>

