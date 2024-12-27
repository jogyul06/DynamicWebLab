<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file = "nav.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="audio.css" rel="stylesheet">
</head>
<body>

<audio id="myAudio">
    <source src="333.mp3" type="audio/mpeg">
</audio>

<img id="playPauseBtn" src="3333.jpg" alt="Play / Pause" style="cursor: pointer;">

<script>
    var isClicked = false;
    var audio = document.getElementById('myAudio');
    var playPauseBtn = document.getElementById('playPauseBtn');

    function togglePlayPause() {
        if (audio.paused) {
            audio.play();
            playPauseBtn.src = '3333.jpg';
            playPauseBtn.classList.add('clicked');
            isClicked = true;
        } else {
            audio.pause();
            playPauseBtn.src = '3333.jpg'; 
            playPauseBtn.classList.remove('clicked');
            isClicked = false;
        }
    }

    playPauseBtn.addEventListener('click', togglePlayPause);
</script>

 <%@include file = "volume.jsp" %>

</body>
</html>
