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
                    text: 'Precipitation'
                },
                xAxis: {
                    categories: ['2010/01', '2010/02', '2010/03', '2010/04', '2010/05', '2010/06', '2010/07', '2010/08', '2010/10', '2010/11', '2010/12', '2011/01', '2011/02', '2011/03', '2011/04', '2011/05', '2011/06', '2011/07', '2011/08', '2011/10', '2011/11', '2011/12', '2012/01', '2012/02', '2012/03', '2012/04', '2012/05', '2012/06', '2012/07', '2012/08', '2012/10', '2012/11', '2012/12', '2013/01', '2013/02', '2013/03', '2013/04', '2013/05', '2013/06', '2013/07', '2013/08', '2013/10', '2013/11', '2013/12']
                },
                yAxis: {
                    title: {
                       text: 'index'
                    }
                },
                series: [{
                    name: 'Precipitation',
                    connectNulls: true,
             	    data: [0.15, 0.08, 0.1, 0.09, 0.02, 0.0, 0.0, 0.0, 0.05, 0.08, 0.18, 0.05, 0.12, 0.22, 0.0, 0.03, 0.05, 0.0, 0.0, 0.04, 0.02, 0.01, 0.08, 0.03, 0.13, 0.08, 0.0, 0.0, 0.0, 0.0, 0.04, 0.13, 0.2, 0.03, 0.01, 0.04, 0.02, 0.01, 0.01, 0.0, 0.0, 0.0, 0.03, 0.01]
                }],
            });
        });
        </script>
    </head>
    
    <div class="container" style="max-width: 1000px;">
        <div id="chart" style="width: 1000px; height: 600px;"></div>                   
    </div>
    
</html>