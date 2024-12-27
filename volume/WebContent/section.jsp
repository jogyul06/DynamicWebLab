<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ripple Effect</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            background-color: yellow; 
            transition: background-color 0.6s ease;
        }

        #ripple-container {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .ripple {
            position: absolute;
            transform: scale(0);
            animation: ripple-effect 1s ease-out;
            pointer-events: none;
            z-index: 1;
        }

        .ripple.circle {
            border-radius: 50%;
        }

        .ripple.square {
            border-radius: 0;
        }

        .ripple.triangle {
            width: 0;
            height: 0;
            border-left: 50px solid transparent;
            border-right: 50px solid transparent;
            border-bottom: 100px solid;
            background: none;
        }

        .ripple.triangle:before {
            content: '';
            position: absolute;
            top: -50px;
            left: -50px;
            border-left: 50px solid transparent;
            border-right: 50px solid transparent;
            border-bottom: 100px solid;
            transform: rotate(180deg);
            background: none;
        }

        @keyframes ripple-effect {
            to {
                transform: scale(2);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div id="ripple-container"></div>
    <script>
        document.getElementById('ripple-container').addEventListener('click', function(e) {
            const randomColor = '#' + Math.floor(Math.random() * 16777215).toString(16);

            const ripple = document.createElement('div');
            ripple.className = 'ripple';

            const shapes = ['circle', 'square'];
            const randomShape = shapes[Math.floor(Math.random() * shapes.length)];
            ripple.classList.add(randomShape);

                ripple.style.backgroundColor = randomColor;
           
            const size = Math.max(this.clientWidth, this.clientHeight);
            ripple.style.width = ripple.style.height = size + 'px';
            ripple.style.left = e.clientX - size / 2 + 'px';
            ripple.style.top = e.clientY - size / 2 + 'px';
            
            this.appendChild(ripple);
            
            ripple.addEventListener('animationend', function() {
                ripple.remove();
            });

            setTimeout(function() {
                document.body.style.backgroundColor = randomColor;
            }, 200); 
        });
    </script>
</body>
</html>

