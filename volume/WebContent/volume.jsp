<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js"></script>
<link href="volume.css" rel="stylesheet">
</head>
<body>

<div class="box">
   <div class="left-box"></div>
   <div class="right-box"></div>
   <div class="circle"></div>
   <div class="line"></div>
   
   <h4 class="box-vol">Volume : <span>0</span></h4>
   


   <script>
   $(document).ready(function() {
       var element = document.querySelector('.right-box');
       var rbox = new Hammer(element);
       rbox.get('pan').set({ direction: Hammer.DIRECTION_ALL });

       var box = $('.box');
       var circle = $('.circle');
       var volumeSpan = $('.box-vol span');
       var audio = document.getElementById('myAudio');
       var maxVolume = 1.0; 

       audio.volume = 0.5;
       
       rbox.on('pandown', function(e) {
           console.log(e.deltaY);
           box.css('transform-origin', 'left top');
           box.css('transform', 'rotate(' + e.deltaY + 'deg)');
           
           var leftValue = parseFloat(circle.css('left').slice(0, -2));
           var newLeftValue = leftValue + e.deltaY / 2;
           
           if (newLeftValue < 0) {
               newLeftValue = 0;
           } else if (newLeftValue > 180) {
               newLeftValue = 180;
           }
           
           circle.css('left', newLeftValue + 'px');
           
           var volume = newLeftValue / 180; 
           audio.volume = volume;
           volumeSpan.text(Math.round(volume * 100));
       });
       
       rbox.on('panup', function(e) {
           console.log(e.deltaY);
           box.css('transform-origin', 'left top');
           box.css('transform', 'rotate(' + e.deltaY + 'deg)');
           
           var leftValue = parseFloat(circle.css('left').slice(0, -2));
           var newLeftValue = leftValue + e.deltaY / 2;
           
           if (newLeftValue < 0) {
               newLeftValue = 0;
           } else if (newLeftValue > 180) {
               newLeftValue = 180;
           }
           
           circle.css('left', newLeftValue + 'px');
           
           var volume = newLeftValue / 180; 
           audio.volume = volume;
           volumeSpan.text(Math.round(volume * 100));
       });

       rbox.on('panend', function(e) {
           box.css('transform', 'rotate(0deg)');
       });
   });
   </script>

</div>

</body>
</html>

