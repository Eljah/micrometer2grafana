<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<title>Micrometer (Prometheus) to Grafana dashboard Convertor</title>
<body>
<div class="container">
<h1>Micrometer (Prometheus) to Grafana dashboard Convertor</h1>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Use <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.jsp">How to use</a>
      </li>
    </ul>
  </div>
</nav>


<form action="config" method="post">

<div class="form-group">
  <label for="exampleFormControlTextarea3">Paste your micrometer output (/actuator/prometheus)</label>
  <textarea class="form-control" id="exampleFormControlTextarea3" rows="10" type="text" name="micrometer"></textarea>
</div>

<input type="submit" class="btn btn-primary" value="Submit">
</form>
</div>
</body>
</html>
