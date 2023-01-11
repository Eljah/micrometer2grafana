<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><!-- jQuery library -->
<link rel="icon" type="image/png" href="favicon.ico"/>
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


<div class="container">
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
<div class="form-group">
      <div class="lead">
      Often we need to set up new Grafana dashboards for our own applications and we can't rely on predefined dashboards from <a href="https://grafana.com/grafana/dashboards/">Grafana Dashboards repository</a>.
      </div>
      </div>
      <div class="form-group">
      <div class="lead">
      We provide you a way convert a sample of Micrometer (Prometheus) formatted metrics to simplistic Grafana dashboard to make you get very first understanding of all trends of all metrics.
      </div>
      </div>
</div>


  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="5"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="0.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Get your Micrometer metrics example</h5>
          <p>Start or access the application's URL where you have the Micrometer-format metrics</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="1.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
         <h5>Copy metrics example</h5>
         <p>Copy the whole plain text of the metrics data and paste it to the textarea field on our site</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="2.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Submit metrics example and get Grafana dashboard JSON config</h5>
          <p>Click submit and get the resulting plain text page with the JSON config of your future Grafana dashboard, then copy it</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="3.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Start new Grafana dashboard import</h5>
          <p>Start new Grafana dashboard import and find the JSON config window there</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="4.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Create Grafana dashboard from the JSON config</h5>
          <p>Paste the JSON as the new Grafana dashboard. We assume you have already set up the <plain>Prometheus</plain> as your datasource (otherwise set it up in the form)</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="5.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block bg-dark mb-4">
          <h5>Enjoy the dashboard and explore the data</h5>
          <p>Take a look on the dashboard that has been generated. Metrics name is put to it's title. Feel free to customize and remove panels</p>
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
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-MFLHJH67Y4"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-MFLHJH67Y4');
</script>
</body>
</html>
