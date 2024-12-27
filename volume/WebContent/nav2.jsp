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
}


.navigation {
    position: fixed; 
    top: 0;
    left: 0;
    height: 100%; 
    background-color: transparent; 
    padding: 20px 0;
    border-right: 2px solid black; 
    display: flex; 
    justify-content: center; 
    align-items: center; 
}

.navigation ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.navigation ul li {
    margin-bottom: 10px; 
}

.navigation ul li a {
    display: block;
    padding: 10px;
    color: black; 
    text-decoration: none;
    font-size: 18px; 
    font-family: Arial, sans-serif; 
    transition: background-color 0.3s ease;
}

/* 링크에 호버 효과 추가 */
.navigation ul li a:hover {
    background-color: rgba(0, 0, 0, 0.1); 
}

</style>
</head>
<body>
<div class="navigation">
    <ul>
        <li><a href="flower.jsp">봄</a></li>
        <li><a href="rain.jsp">여름</a></li>
        <li><a href="maple.jsp">가을</a></li>
        <li><a href="snow.jsp">겨울</a></li>
    </ul>
</div>
</body>
</html>
