package eljah.tatar;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.WildcardFileFilter;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.ServletOutputStream;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/config")
public class GenerateServlet extends HttpServlet {

    final static String PRE_PANEL = "{\n" +
            "  \"annotations\": {\n" +
            "    \"list\": [\n" +
            "      {\n" +
            "        \"builtIn\": 1,\n" +
            "        \"datasource\": \"-- Grafana --\",\n" +
            "        \"enable\": true,\n" +
            "        \"hide\": true,\n" +
            "        \"iconColor\": \"rgba(0, 211, 255, 1)\",\n" +
            "        \"name\": \"Annotations & Alerts\",\n" +
            "        \"type\": \"dashboard\"\n" +
            "      }\n" +
            "    ]\n" +
            "  },\n" +
            "  \"description\": \"Autogenerated Dashboard\",\n" +
            "  \"editable\": true,\n" +
            "  \"gnetId\": 12464,\n" +
            "  \"graphTooltip\": 0,\n" +
            "  \"id\": 73,\n" +
            "  \"iteration\": 1673373181126,\n" +
            "  \"links\": [],\n" +
            "  \"panels\": [";

    final static String POST_PANEL = "],\n" +
            "  \"time\": {\n" +
            "    \"from\": \"now-7d\",\n" +
            "    \"to\": \"now\"\n" +
            "  },\n" +
            "  \"timepicker\": {\n" +
            "    \"refresh_intervals\": [\n" +
            "      \"10s\",\n" +
            "      \"30s\",\n" +
            "      \"1m\",\n" +
            "      \"5m\",\n" +
            "      \"15m\",\n" +
            "      \"30m\",\n" +
            "      \"1h\",\n" +
            "      \"2h\",\n" +
            "      \"1d\"\n" +
            "    ],\n" +
            "    \"time_options\": [\n" +
            "      \"5m\",\n" +
            "      \"15m\",\n" +
            "      \"1h\",\n" +
            "      \"6h\",\n" +
            "      \"12h\",\n" +
            "      \"24h\",\n" +
            "      \"2d\",\n" +
            "      \"7d\",\n" +
            "      \"30d\"\n" +
            "    ]\n" +
            "  },\n" +
            "  \"timezone\": \"\",\n" +
            "  \"title\": \"%2$s\",\n" +
            "  \"uid\": \"%1$s\",\n" +
            "  \"version\": 1\n" +
            "}";

    final static String PANEL_TEMPLATE_PLAIN = "{\n" +
            "      \"aliasColors\": {},\n" +
            "      \"bars\": false,\n" +
            "      \"dashLength\": 10,\n" +
            "      \"dashes\": false,\n" +
            "      \"datasource\": \"%4$s\",\n" +
            "      \"fieldConfig\": {\n" +
            "        \"defaults\": {\n" +
            "          \"custom\": {}\n" +
            "        },\n" +
            "        \"overrides\": []\n" +
            "      },\n" +
            "      \"fill\": 1,\n" +
            "      \"fillGradient\": 0,\n" +
            "      \"gridPos\": {\n" +
            "        \"h\": 9,\n" +
            "        \"w\": 12,\n" +
            "        \"x\": 0,\n" +
            "        \"y\": 0\n" +
            "      },\n" +
            "      \"hiddenSeries\": false,\n" +
            "      \"id\": %2$s,\n" +
            "      \"legend\": {\n" +
            "        \"avg\": false,\n" +
            "        \"current\": false,\n" +
            "        \"max\": false,\n" +
            "        \"min\": false,\n" +
            "        \"show\": true,\n" +
            "        \"total\": false,\n" +
            "        \"values\": false\n" +
            "      },\n" +
            "      \"lines\": true,\n" +
            "      \"linewidth\": 1,\n" +
            "      \"nullPointMode\": \"null\",\n" +
            "      \"options\": {\n" +
            "        \"alertThreshold\": true\n" +
            "      },\n" +
            "      \"percentage\": false,\n" +
            "      \"pluginVersion\": \"7.3.5\",\n" +
            "      \"pointradius\": 2,\n" +
            "      \"points\": false,\n" +
            "      \"renderer\": \"flot\",\n" +
            "      \"seriesOverrides\": [],\n" +
            "      \"spaceLength\": 10,\n" +
            "      \"stack\": false,\n" +
            "      \"steppedLine\": false,\n" +
            "      \"targets\": [\n" +
            "        {\n" +
            "          \"expr\": \"%1$s\",\n" +
            "          \"interval\": \"\",\n" +
            "          \"legendFormat\": \"\",\n" +
            "          \"refId\": \"A\"\n" +
            "        }\n" +
            "      ],\n" +
            "      \"thresholds\": [],\n" +
            "      \"timeFrom\": null,\n" +
            "      \"timeRegions\": [],\n" +
            "      \"timeShift\": null,\n" +
            "      \"title\": \"%1$s\",\n" +
            "      \"tooltip\": {\n" +
            "        \"shared\": true,\n" +
            "        \"sort\": 0,\n" +
            "        \"value_type\": \"individual\"\n" +
            "      },\n" +
            "      \"type\": \"graph\",\n" +
            "      \"xaxis\": {\n" +
            "        \"buckets\": null,\n" +
            "        \"mode\": \"time\",\n" +
            "        \"name\": null,\n" +
            "        \"show\": true,\n" +
            "        \"values\": []\n" +
            "      },\n" +
            "      \"yaxes\": [\n" +
            "        {\n" +
            "          \"format\": \"short\",\n" +
            "          \"label\": null,\n" +
            "          \"logBase\": 1,\n" +
            "          \"max\": null,\n" +
            "          \"min\": null,\n" +
            "          \"show\": true\n" +
            "        },\n" +
            "        {\n" +
            "          \"format\": \"short\",\n" +
            "          \"label\": null,\n" +
            "          \"logBase\": 1,\n" +
            "          \"max\": null,\n" +
            "          \"min\": null,\n" +
            "          \"show\": true\n" +
            "        }]\n" +
            "}";
    final static String PANEL_TEMPLATE_DERIVATIVE = "{\n" +
            "      \"aliasColors\": {},\n" +
            "      \"bars\": false,\n" +
            "      \"dashLength\": 10,\n" +
            "      \"dashes\": false,\n" +
            "      \"datasource\": \"%4$s\",\n" +
            "      \"fieldConfig\": {\n" +
            "        \"defaults\": {\n" +
            "          \"custom\": {}\n" +
            "        },\n" +
            "        \"overrides\": []\n" +
            "      },\n" +
            "      \"fill\": 1,\n" +
            "      \"fillGradient\": 0,\n" +
            "      \"gridPos\": {\n" +
            "        \"h\": 9,\n" +
            "        \"w\": 12,\n" +
            "        \"x\": 0,\n" +
            "        \"y\": 0\n" +
            "      },\n" +
            "      \"hiddenSeries\": false,\n" +
            "      \"id\": %3$s,\n" +
            "      \"legend\": {\n" +
            "        \"avg\": false,\n" +
            "        \"current\": false,\n" +
            "        \"max\": false,\n" +
            "        \"min\": false,\n" +
            "        \"show\": true,\n" +
            "        \"total\": false,\n" +
            "        \"values\": false\n" +
            "      },\n" +
            "      \"lines\": true,\n" +
            "      \"linewidth\": 1,\n" +
            "      \"nullPointMode\": \"null\",\n" +
            "      \"options\": {\n" +
            "        \"alertThreshold\": true\n" +
            "      },\n" +
            "      \"percentage\": false,\n" +
            "      \"pluginVersion\": \"7.3.5\",\n" +
            "      \"pointradius\": 2,\n" +
            "      \"points\": false,\n" +
            "      \"renderer\": \"flot\",\n" +
            "      \"seriesOverrides\": [],\n" +
            "      \"spaceLength\": 10,\n" +
            "      \"stack\": false,\n" +
            "      \"steppedLine\": false,\n" +
            "      \"targets\": [\n" +
            "        {\n" +
            "          \"expr\": \"rate(%1$s[5m])\",\n" +
            "          \"interval\": \"\",\n" +
            "          \"legendFormat\": \"\",\n" +
            "          \"refId\": \"A\"\n" +
            "        }\n" +
            "      ],\n" +
            "      \"thresholds\": [],\n" +
            "      \"timeFrom\": null,\n" +
            "      \"timeRegions\": [],\n" +
            "      \"timeShift\": null,\n" +
            "      \"title\": \"rate(%1$s[%5$s])\",\n" +
            "      \"tooltip\": {\n" +
            "        \"shared\": true,\n" +
            "        \"sort\": 0,\n" +
            "        \"value_type\": \"individual\"\n" +
            "      },\n" +
            "      \"type\": \"graph\",\n" +
            "      \"xaxis\": {\n" +
            "        \"buckets\": null,\n" +
            "        \"mode\": \"time\",\n" +
            "        \"name\": null,\n" +
            "        \"show\": true,\n" +
            "        \"values\": []\n" +
            "      },\n" +
            "      \"yaxes\": [\n" +
            "        {\n" +
            "          \"format\": \"short\",\n" +
            "          \"label\": null,\n" +
            "          \"logBase\": 1,\n" +
            "          \"max\": null,\n" +
            "          \"min\": null,\n" +
            "          \"show\": true\n" +
            "        },\n" +
            "        {\n" +
            "          \"format\": \"short\",\n" +
            "          \"label\": null,\n" +
            "          \"logBase\": 1,\n" +
            "          \"max\": null,\n" +
            "          \"min\": null,\n" +
            "          \"show\": true\n" +
            "        }]\n" +
            "}";


    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String configName
                = req.getParameter("micrometer");

        String format
                = req.getParameter("format");

        String time
                = req.getParameter("time");

        String datasource
                = req.getParameter("datasource");

        String uid
                = req.getParameter("uid");

        String title
                = req.getParameter("title");

        StringBuilder resultStringBuilder = new StringBuilder();
        Set<String> uniqueValues = new HashSet<>();

        Scanner scanner = new Scanner(configName);
        int i = 1;
        res.setContentType("text/plain");

        resultStringBuilder.append(PRE_PANEL);

        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            line = line.split("\\{")[0].split(" ")[0];
            if (!line.contains("#")) {
                boolean unique = uniqueValues.add(line);
                if (unique) {
                    if (format.equals("plain") || format.equals("both")) {
                        line = String.format(PANEL_TEMPLATE_PLAIN, line, i++, i++, datasource, time);
                        resultStringBuilder.append("\n").append(line).append(",");
                    }
                    if (format.equals("derivative") || format.equals("both")) {
                        line = String.format(PANEL_TEMPLATE_DERIVATIVE, line, i++, i++, datasource, time);
                        resultStringBuilder.append("\n").append(line).append(",");
                    }
                }
            }
        }
        scanner.close();
        resultStringBuilder.deleteCharAt(resultStringBuilder.length() - 1);

        resultStringBuilder.append(String.format(POST_PANEL, uid, title));

        System.out.println(resultStringBuilder.toString());
        res.getOutputStream().write(resultStringBuilder.toString().getBytes(StandardCharsets.UTF_8));
        //res.addHeader("Content-Disposition", "attachment; filename="+ configName+".ovpn");
        res.flushBuffer();
    }
}