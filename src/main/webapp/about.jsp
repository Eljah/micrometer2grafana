<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><!-- jQuery library -->
<style>
.carousel-caption {
    position: relative;
    left: 0;
    top: 0;
}
</style>
</head>
<title>
Micrometer (Prometheus) to Grafana dashboard Convertor
</title>
<body>
<h1>How to use the Convertor</h1>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href=".">Back to Use</a>
      </li>
      <li class="nav-item  active">
        <a class="nav-link" href="#">How to use <span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>

<div class="container">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="1.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Get your Micrometer metrics example</h5>
          <p>Start or access the application's URL where you have the Micrometer-format metrics</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="2.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Copy metrics example</h5>
          <p>Copy the whole plain text of the metrics data and past it to the textaea field on our site</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="3.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Get Grafana dashboard JSON config</h5>
          <p>Submit the form, get the resulting plain text page with the json config of your future Grafana dashboard and copy it</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="4.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Create Grafana dashboard from the JSON config</h5>
          <p>Import the json as the new Grafana dashboard. We assume you have already set up the <plain>Prometheus</plain> as your datasource (otherwise set it up in the form)</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<!--<div>
<div>Start or access the application's URL where you have the Micrometer-format metrics</div>
<img src="1.png">
<div>Copy the whole plain text of the metrics data and past it to the textaea field on our site</div>
<img src="2.png">
<div>Submit the form, get the resulting plain text page with the json config of your future Grafana dashboard and copy it</div>
<img src="3.png">
<div>Import the json as the new Grafana dashboard. We assume you have already set up the <plain>Prometheus</plain> as your datasource (otherwise set it up in the form)</div>
<img src="4.png">
</div>-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
