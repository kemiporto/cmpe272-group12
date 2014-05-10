 
 <html>
    <head>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src="http://code.highcharts.com/highcharts.js"></script>
        <script type="text/javascript">
        $(function () {

            $('#chart').highcharts({
               chart: {
                    type: 'spline'
                },
                title: {
                    text: 'Groundwater Level x Precipitation'
                },
                xAxis: {
                    categories: ['1907', '1908', '1909', '1910', '1911', '1912', '1913', '1914', '1915', '1916', '1917', '1918', '1919', '1920', '1921', '1922', '1923', '1924', '1925', '1926', '1927', '1928', '1929', '1930', '1931', '1932', '1933', '1934', '1935', '1936', '1937', '1938', '1939', '1940', '1941', '1942', '1943', '1944', '1945', '1946', '1947', '1948', '1949', '1950', '1951', '1952', '1953', '1954', '1955', '1956', '1957', '1958', '1959', '1960', '1961', '1962', '1963', '1964', '1965', '1966', '1967', '1968', '1969', '1970', '1971', '1972', '1973', '1974', '1975', '1976', '1977', '1978', '1979', '1980', '1981', '1982', '1983', '1984', '1985', '1986', '1987', '1988', '1989', '1990', '1991', '1992', '1993', '1994', '1995', '1996', '1997', '1998', '1999', '2000', '2001', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013']
                },
                yAxis: {
                    title: {
                       text: 'level'
                    }
                },
                series: [{
                    name: 'Groundwater Level',
                    connectNulls: true,
             	    data: [4.0, 2.0, 4.0, 4.0, 4.0, 2.0, 1.0, 4.0, 4.0, 4.0, 3.0, 1.0, 2.0, 0.0, 0.0, 3.0, 2.0, 0.0, 1.0, 1.0, 4.0, 3.0, 0.0, 1.0, 0.0, 1.0, 0.0, 0.0, 2.0, 2.0, 2.0, 4.0, 1.0, 3.0, 4.0, 4.0, 4.0, 1.0, 2.0, 2.0, 1.0, 2.0, 1.0, 2.0, 3.0, 4.0, 4.0, 3.0, 1.0, 4.0, 3.0, 4.0, 2.0, 1.0, 1.0, 2.0, 4.0, 1.0, 4.0, 2.0, 4.0, 2.0, 4.0, 4.0, 4.0, 2.0, 3.0, 4.0, 4.0, 0.0, 0.0, 3.0, 2.0, 3.0, 1.0, 4.0, 4.0, 4.0, 1.0, 4.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 3.0, 0.0, 4.0, 4.0, 4.0, 4.0, 4.0, 3.0, 1.0, 1.0, 3.0, 2.0, 3.0, 4.0, 1.0, 0.0, 1.0, 2.0, 4.0, 2.0, 1.0]
                }, {
                    name: 'Precipitation',
                    connectNulls: true,
             	    data: [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1.2, 2.4, 1.6, 2.4, 1.2, 2.0, 2.4, 1.2, 2.0, 2.8000000000000003, 0.8, 1.6, 1.6, 2.4, 2.4, 2.0, 1.6, 1.6, 2.0, 1.6, 2.8000000000000003, 2.4, 1.2, 1.6, 2.8000000000000003, 1.6, 1.6, 0.8, 1.2, 2.8000000000000003, 2.4, 2.0, 2.4, 3.5999999999999996, 3.5999999999999996, 1.2, 1.2, 2.0, 1.6, 1.2, 1.6, 1.6, 1.6, 2.0, 2.8000000000000003, 1.2, 2.0, 2.4, 2.0, 3.2, 1.2, 2.4, 2.4, 2.0, 1.6, 2.0, 2.4, 2.0, 1.2, 1.6, 2.0, 2.4, 2.0, 2.4, 0.8]
                }],
            });
        });        
        </script>
    </head>    
    
        <div class="container" style="max-width: 1000px;">
                
            <table class="table table-striped table-bordered table-condensed"
                style="text-align: center; float: center; width: 800; box-shadow: 0px 0px 25px #888888; background-color: white;">
                <tr>
                    <td>
                    <div>                    
                        <p style="width: 1000; font-size: 30; font-family: Georgia;">Read and Compare Your Bill.</p>
                    </div>
                    <td>
                </tr>
                
                <tr>
                    <td>
                    <div align="center" id = "myCarousel" class ="carousel slide" data-ride="carousel" data-interval="2000" data-wrap = "true">

                        <div>                
                            <ol class = "carousel-indicators" >
                                <li data-target = "#myCarousel" data-slide-to = "0" class = "active"></li>
                                <li data-target = "#myCarousel" data-slide-to = "1"></li>
                                <li data-target = "#myCarousel" data-slide-to = "2"></li>
                            </ol>	

                            <div class = "carousel-inner" >

                                <div class = "item active"   >
                                        <img src ="images/WaterBillIntro.jpg" alt = "Intro" class = "img-responsive" >  
                                </div>

                                <div class = "item "   >
                                    <img src ="images/WaterBillUsage.jpg" alt = "Water Usage" class = "img-responsive" >  
                                </div>

                                <div class = "item "   >
                                    <img src ="images/WaterBillCredit.jpg" alt = "Credit/Refunds" class = "img-responsive" >  
                                </div>
                            </div>

                            <a class ="carousel-control left" href= "#myCarousel" data-slide = "prev">
                               <span class = "icon-prev"> </span>
                            </a> 
                            <a class ="carousel-control right" href= "#myCarousel" data-slide = "next">
                               <span class = "icon-next"> </span>
                            </a> 
                        </div>
                    </div>
                    <td>
                </tr>
                
                <tr>
                    <td>
                        <div id="chart" style="width: 1000px; height: 600px;"></div>
                    </td>                    
                </tr>
            </table>
            
        </div>
 </html>