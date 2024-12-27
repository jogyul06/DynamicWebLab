<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Bar</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    nav {
        position: fixed;
        top: 0;
        width: 100%;
        background: linear-gradient(45deg, #6a11cb, #2575fc); 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        z-index: 10;
    }

    nav ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
    }

    nav ul li {
        margin: 0 15px;
        position: relative; /* li 요소에 position 추가 */
    }

    nav ul li a {
        text-decoration: none;
        color: white;
        padding: 15px 20px;
        display: block;
        transition: color 0.3s ease;
        border-radius: 5px;
        position: relative; /* a 요소에 position 추가 */
    }

    nav ul li a::after {
        content: '';
        position: absolute;
        width: 0;
        height: 2px;
        bottom: 0;
        left: 50%;
        background-color: white;
        transition: width 0.3s ease, left 0.3s ease;
    }

    nav ul li a:hover::after {
        width: 100%;
        left: 0;
    }

    .content {
        padding-top: 70px; 
    }
</style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="main.jsp">Home</a></li>
            <li><a href="card.jsp">Gallery</a></li>
            <li><a href="flower.jsp">Weather</a></li>
            <li><a href="audio.jsp">Audio</a></li>
        </ul>
    </nav>
</body>
</html>
