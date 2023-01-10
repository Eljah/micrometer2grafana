<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<body>
<h2>Micrometer (prometheus) outpur to Grafana dashboard convertor</h2>
<a href="about.jsp">How to use</a>
<form action="config" method="post">
<table>
<tr><td>
Paste your micrometer output (/actuator/prometheus)</td></tr>
<tr><td><textarea type="text" name="micrometer">
</textarea>
</td>
</tr>
</table>

<input type="submit" value="Submit">
</form>
</body>
</html>
