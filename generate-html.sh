cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Container Info</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      padding: 0;
    }
    .header {
      text-align: center;
      font-size: 24px;
      font-weight: bold;
      color: black;
      margin-bottom: 160px;
    }
    .box {
      border: 2px solid black;
      padding: 10px;
      margin: 20px 0;
      font-size: 14px;
      font-weight: normal;
    }
    .footer {
      text-align: center;
      margin-top: 120px;
      font-size: 12px;
      color: purple;
    }
  </style>
</head>
<body>
  <div class="header">Welcome! It works!</div>
  <div class="box">
    <h1>Pod name: ${POD_NAME}</h1>
  </div>
  <div class="box">
    <h2>And...</h2>
  </div>
  <div class="box">
    <h3>Container name: ${CONTAINER_NAME}</h3>
  </div>
  <div class="footer">
    <h4>Generated dynamically by Docker container!</h4>
  </div>
</body>
</html>
