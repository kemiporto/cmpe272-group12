 
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
                    categories: ['2009/01', '2009/02', '2009/03', '2009/04', '2009/05', '2009/06', '2009/07', '2009/08', '2009/09', '2009/10', '2009/11', '2009/12', 
                                 '2010/01', '2010/02', '2010/03', '2010/04', '2010/05', '2010/06', '2010/07', '2010/08', '2010/09', '2010/10', '2010/11', '2010/12', 
                                 '2011/01', '2011/02', '2011/03', '2011/04', '2011/05', '2011/06', '2011/07', '2011/08', '2011/09', '2011/10', '2011/11', '2011/12', 
                                 '2012/01', '2012/02', '2012/03', '2012/04', '2012/05', '2012/06', '2012/07', '2012/08', '2012/09', '2012/10', '2012/11', '2012/12', 
                                 '2013/01', '2013/02', '2013/03', '2013/04', '2013/05', '2013/06', '2013/07', '2013/08', '2013/09', '2013/10', '2013/11', '2013/12'
                                ]
                },
                yAxis: {
                    title: {
                       text: 'level'
                    }
                },
                
                series: [{
                    name: 'Groundwater Level',
                    connectNulls: true,
             	    data: []
                }, {
                    name: 'Precipitation',
                    connectNulls: true,
             	    data: [ 0.5, 1.8, 0.7, 0.5, 0.3, 0.2, 0.0, 0.0, 0.0, 1.0, 0.1, 1.2,
                            1.5, 0.8, 1.0, 0.9, 0.2, 0.2, 0.0, 0.0, 0.0, 0.5, 0.8, 1.8,
                            0.5, 1.2, 2.2, 0.0, 0.3, 0.5, 0.0, 0.0, 0.0, 0.4, 0.1, 0.1,
                            0.8, 0.3, 0.7, 1.3, 0.8, 0.0, 0.0, 0.0, 0.0, 0.4, 1.3, 2.0,
                            0.3, 0.1, 0.7, 0.4, 0.2, 0.1, 0.1, 0.0, 0.2, 0.0, 0.3, 0.2
                           ]
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
                        <p style="width: 1000; font-size: 20; font-family: Georgia;">Compare your bill with the chart below for the usage month. If your usage is high for the months with low rain, you are using more water and should have conserved.</p>
                    </td>                    
                </tr>
                
                <tr>
                    <td>
                        <div id="chart" style="width: 1000px; height: 600px;"></div>
                    </td>                    
                </tr>
            </table>
            
        </div>
 </html>