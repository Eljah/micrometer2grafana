<%@ page contentType="text/html; charset=UTF-8" %>
<html>
   <head>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <link rel="icon" type="image/png" href="favicon.ico"/>
   </head>
   <!-- Google tag (gtag.js) -->
   <script async src="https://www.googletagmanager.com/gtag/js?id=G-MFLHJH67Y4"></script>
   <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-MFLHJH67Y4');
   </script>
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
               <label for="exampleFormControlTextarea3">Paste your micrometer output (say, if you use Spring Boot actuator, take the output from here: /actuator/prometheus)</label>
            </div>
            <div class="form-group">
               <textarea class="form-control" id="exampleFormControlTextarea3" rows="10" type="text" name="micrometer"></textarea>
               <div class="container px-2">
                  <div class="row gx-5">
                     <div class="col-sm-4 p-2">
                        <div class="row">
                           <INPUT TYPE="radio" name="format" value="plain"/>
                           <label for="plain">Plain values</label>
                        </div>
                        <div class="row">
                           <INPUT TYPE="radio" NAME="format" VALUE="derivative"/>
                           <label for="derivative">Time derivative values</label>
                        </div>
                        <div class="row">
                           <INPUT TYPE="radio" NAME="format" VALUE="both" checked="checked"/>
                           <label for="both">2 dashboards for both</label>
                        </div>
                     </div>
                     <div class="col-sm-4 p-2">
                        <div class="row p-2">
                           <input type="text" name="time" value="5m">
                           <label for="time">Time for time derivative values</label>
                        </div>
                        <div class="row p-2">
                           <input type="text" name="datasource" value="Prometheus">
                           <label for="datasource">Datasource name</label>
                        </div>
                     </div>
                     <div class="col-sm-4 p-2">
                        <div class="row p-2">
                           <input type="text" name="uid" value="metrics">
                           <label for="uid">Unique dashboard name (come up with your own)</label>
                        </div>
                        <div class="row p-2">
                           <input type="text" name="title" value="Yet Another Dashboard">
                           <label for="title">Dashboard's Title</label>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <input type="submit" class="btn btn-primary" value="Submit">
         </form>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   </body>
</html>