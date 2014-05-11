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
                        text: 'test1 x test2'
                    },
                    xAxis: {
                        categories: ['2008', '2009', '2010', '2012', '2013', '2014']
                    },
                    yAxis: {
                        title: {
                           text: 'info'
                        }
                    },
                    series: [{
                        name: 'test1',
                        connectNulls: true,
                  data: [null, 10.0, null, 1.0, 71.0, 7.0]
                    }, {
                        name: 'test2',
                        connectNulls: true,
                  data: [1.0, null, 5.0, null, 6.0, 16.0]
                    }],
                });
            });
        </script>
    </head>
    
    <div class="container" style="max-width: 1000px;">
        <div id="chart" style="width: 800px; height: 400px;"></div>
    </div>
    
</html>