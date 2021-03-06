<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:useBean id="hotel" class="bigdata.HotelExtractor" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
  <title>Hotel Inspection Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">
 <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.system.js"></script>
   <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.coreBasic.js"></script> 
      <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.animation.js"></script>  
 <!-- Uncomment this section to add extended User Interaction capabilities, including the End-User Menu.
         The UI features require a jChartFX Plus license for deployment.
    <script type="text/javascript" src="jChartFX/jchartfx.userinterface.js"></script>
    <link rel="stylesheet" type="text/css" href="jchartfx.userinterface.css" />
    -->
        <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.coreVector.js"></script>
   <script type="text/javascript" src="j../jchartfx.7.4.5649/js/chartfx.coreVector3d.js"></script>
   <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.advanced.js"></script>
   <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.axistrend.js"></script>

      <script type="text/javascript" src="../jchartfx.7.4.5649/js/jchartfx.animation.js"></script>  
    
    <link rel="stylesheet" type="text/css" href="../jchartfx.7.4.5649/styles/Attributes/jchartfx.attributes.css" />
    <link rel="stylesheet" type="text/css" href="../jchartfx.7.4.5649/styles/Attributes/jchartfx.palette.css" />

</head>
<body>
<div class="navbar navbar-default" role="navigation">

<div class="navbar-inner">
<div class="navbar-header" style="width:50px;">
      <a class="navbar-brand" href="#" style="font-family:Arial;font-size:20px;"> Hotel of Interest</a>
    </div>
<div class="col-sm-3 col-md-3 pull-right">
        <form class="navbar-form pull-right" role="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="search-term" id="search-term">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit" onclick="searchData()"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
      <%String myText = request.getParameter("search-term");
        		String hid=hotel.getPos(myText).split(",")[0].trim();
        		// String hname=hotel.getPos(myText).split(",")[1];
        		 //"<a href=Dashboard.jsp?hid="+d.id+"&hname="+name+">"+d.name+"<a>"
        		%>


        <script src="http://d3js.org/d3.v3.min.js"></script>
        <script type="text/javascript">
       	
        function searchData() {
		window.location='Dashboard.jsp?hid="+<%=hid.trim()%>+"';        	
        	
        	}
        
        var xmlHttp;
    	var xmlHttp;
    	function showState(str) {
    		if (typeof XMLHttpRequest != "undefined") {
    			xmlHttp = new XMLHttpRequest();
    		} else if (window.ActiveXObject) {
    			xmlHtp = new ActiveXObject("Microsoft.XMLHTTP");
    		}
    		if (xmlHttp == null) {
    			alert("Browser does not support XMLHTTP Request");
    			return;
    		}
    	alert(str);
    		var url = "siteR_servlet.jsp";
    		url += "?count=" + elem;
    	//alert(k);
    		xmlHttp.onreadystatechange = stateChange;
    		xmlHttp.open("GET", url, true);
    		xmlHttp.send(null);
    	}

    	function stateChange() {
    		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
    			//document.getElementById("ChartDiv1").style.display='block';
    			document.getElementById("block").innerHTML = xmlHttp.responseText;
    		
    		
    			//document.getElementById("arrow").style.display='BLOCK';
    		}
    	}
        </script>
        

        </div>

</div>
</div>
<div class="ch-container">
    <div class="row"  style="width:1420px;">

       </div>
<div class="row"  style="width:1420px;">
 <div class="box col-md-4"  >
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-list-alt"></i>Hotels Priority List</h2>
				<div class="box-icon">
                   
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
                
            </div>
            <div class="box-content">
              <div id="block" ></div>
    <div class="table-responsive">
                   
					<script src="http://d3js.org/d3.v3.min.js"></script>
					<script>
            d3.csv("list.csv", function(data) {
    
    var columns = ["hotel_id","hotel_name","hotel_URL","city"];

    var table = d3.select(".table-responsive").append("table").attr("class","table table-condensed"),
        
        tbody = table.append("tbody");

   
    var rows = tbody.selectAll("tr")
        .data(data)
        .enter()
        .append("tr");

    var cells = rows.selectAll("td")
        .data(function(row) {
            return columns.map(function(column) {
			console.log(row["hotel_id"]);
                return {column: column, id: row["hotel_id"], name: row["hotel_name"], url: row["hotel_URL"], c: row["city"]};
            });
        })
        .enter()
        .append("td")
            .html(function(d) 
			{ if(d.column == "hotel_name")
			{
			console.log(d.name);
			var name = d.name;
			name=name.split(" ").join("-");
			console.log(name);
			    return "<a href=Dashboard.jsp?hid="+d.id+"&hname="+name+">"+d.name+"<a>";
				}});
});
        </script>
                  </div>
                  <div class="box-footer clearfix">
                  <a class="btn btn-sm btn-default btn-flat pull-right" href="javascript::;">View All Hotels</a>
                </div>
    </div>
    </div>
    </div>
    <div class="box col-md-8"  >
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-map-marker"></i>World Map</h2>
				<div class="box-icon">
                   
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
                
            </div>
            <div class="box-content">
                                  <div class="pad">
                        <script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/topojson.v0.min.js"></script>
<script src="http://d3js.org/queue.v1.min.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>

<script>
var mapwidth = 900, mapheight = 500;

var svg = d3.select(".pad").append("svg")
    .attr("width", mapwidth)
    .attr("height", mapheight);
	
var g = svg.append("g");
	
var zoomin = d3.behavior.zoom()
	.scaleExtent([1,6])
    .on("zoom", zoomfunc);
	
var geoprojection = d3.geo.mercator();

var geopath = d3.geo.path()
    .projection(geoprojection);
	
function zoomfunc() {
        g.attr("transform","translate("+ d3.event.translate.join(",")+")scale("+d3.event.scale+")");
        g.selectAll("circle").attr("d", geopath.projection(geoprojection));
        g.selectAll("path").attr("d", geopath.projection(geoprojection)); 
  };

 queue().defer(d3.json, "world.json").defer(d3.tsv, "world-country-names.tsv")
    .await(map);
  
function map(error, world, country_name) {
if (error) throw error;


 var total_countries = topojson.object(world, world.objects.countries).geometries,
      i = -1,
      n = total_countries.length;
	  
	  total_countries.forEach(function(d) { 
    var check = country_name.filter(function(n) { return d.id == n.id; })[0];
    if (typeof check === "undefined"){
      d.name = "Unknown";
    } else {
      d.name = check.name; 
    }
  });


g.selectAll("path")
      .data(total_countries)
	  .enter().append("path")
      .attr("d", geopath)
	  .attr("class", "countries").on("mouseover", function() {
  
            var display = d3.select(this);
				}).append("svg:title")
				.text(function(d,i){return d.name;});	
				
var radius = d3.scale.sqrt()
	.domain([0,50])
    .range([0,5]);
				
d3.csv("list.csv", function(error, data) {
if (error) throw error;

var newdata = d3.nest()
.key(function(d){return d.city; })
//.key(function(d){return d.gender;})
.rollup(function(d){
return {
city: d[0].city,
count: d.length,
lat: +d[0].latitude,
lng: +d[0].longitude
};
}).entries(data); 

var radius = d3.scale.sqrt()
.domain([0,10])
.range([0,20]);

    g.selectAll("pins")
       .data(newdata)
       .enter()
       .append("circle")
	   .attr("r", function(d,i){return radius(newdata[i].values.count);})
       .attr("transform", function(d,i) { return "translate(" + geoprojection([+newdata[i].values.lng,+newdata[i].values.lat]) + ")";})
	   .attr("class", "bubbles")
	   .on("mouseover", function() {
  
            var display = d3.select(this);
				}).append("svg:title")
				.text(function(d,i){return "Count: "+newdata[i].values.count+"\nLocation: "+newdata[i].values.city;});
});

};

svg.call(zoomin);

</script>
                        </div>

            </div>
            </div>
            </div>
           
</div>
</div>

</body>
</html>