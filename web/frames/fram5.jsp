<%-- 
    Document   : fram5
    Created on : Jul 22, 2018, 1:34:32 PM
    Author     : Akash Raval (rvlaakash@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
.container {
    position: relative;
    width: 80%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: red;
  color: yellow;
  font-size: 16px;
  padding: 16px 32px;
}
.text1 {
  background-color: #4CAF50;
  color: white;
  font-size: 16px;

}


.img:hover {
  animation: shake 1s;
  animation-iteration-count: infinite;
}

@keyframes shake {
  0% { transform: translate(1px, 1px) rotate(0deg); }
  10% { transform: translate(-1px, -2px) rotate(-1deg); }
  20% { transform: translate(-3px, 0px) rotate(1deg); }
  30% { transform: translate(3px, 2px) rotate(0deg); }
  40% { transform: translate(1px, -1px) rotate(1deg); }
  50% { transform: translate(-1px, 2px) rotate(-1deg); }
  60% { transform: translate(-3px, 1px) rotate(0deg); }
  70% { transform: translate(3px, 1px) rotate(-1deg); }
  80% { transform: translate(-1px, -1px) rotate(1deg); }
  90% { transform: translate(1px, 2px) rotate(0deg); }
  100% { transform: translate(1px, -2px) rotate(-1deg); }
}

</style>
    </head>
    <body style="background-color: #4CAF50;">
    <center> <div class="container"><h3 class="image text1">© Copyright 2018-2019 spuportal. All rights reserved. Developed and Designed by Akash Raval & Deep Purohit.</h3><div class="middle"><div class="text" style=" width: 1300px"><div class="img" style="width: 1300px;">© Copyright 2018-2019 spuportal. All rights reserved. Developed and Designed by <b>Akash Raval & Deep Purohit.</b></div></div></div></div></center>
    </body>
</html>
