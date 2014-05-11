var chart;
var totalShowerGallon=0;
var totalLaundaryGallon = 0;
var totalBathGallon = 0;
var totalLoadsGallon = 0;
var totalFlushGallon = 0;
var totalLandScapingGallon =0;
var totalOtherGallon = 0;
var grandTotal = 0;

var percentShowerGallon=0;
var percentLaundaryGallon = 0;
var percentBathGallon = 0;
var percentLoadsGallon = 0;
var percentFlushGallon = 0;
var percentLandScapingGallon =0;
var percentOtherGallon = 0;

function calculateWaterUsage(){
	var noofpeople = parseInt($('input[name=noofpeople]').val(),10);
	//Shower
	var noofshowers = parseInt($('input[name=noofshowers]').val(),10);
	var showerminutes = parseInt($('input[name=showerminutes]').val(),10);
	var efficientShowerHead = $('input[name=efficientShowerHead]').val();
	var showerGallonPerMin = 2;
	if(efficientShowerHead != 'No'){
		showerGallonPerMin = 4;
	}
	if(noofshowers){
		totalShowerGallon = noofshowers * showerminutes * showerGallonPerMin;
	}
	//Bath
	var noofbaths = parseInt($('input[name=noofbaths]').val(),10);
	var tubHalfFull = $('input[name=tubHalfFull]').val();
	var bathGallonsMultiplier = 20;
	if(tubHalfFull != 'No'){
		bathGallonsMultiplier = 40;
	}
	if(noofbaths){
		totalBathGallon = noofbaths * bathGallonsMultiplier;
	}
	//Laundary
	var nooflaundaryloads = parseInt($('input[name=nooflaundaryloads]').val(),10);
	var efficientwashingmachine = $('input[name=efficientwashingmachine]').val();
	var laundaryGallon = 40;
	if(efficientwashingmachine != 'No'){
		laundaryGallon = 60;
	}
	if(nooflaundaryloads){
		totalLaundaryGallon = nooflaundaryloads * laundaryGallon;
	}
	//Dish Washer
	var noofloads = parseInt($('input[name=noofloads]').val(),10);
	var efficientdishwasher = $('input[name=efficientdishwasher]').val();
	var dishWasherGallon = 10;
	if(efficientdishwasher != 'No'){
		dishWasherGallon = 30;
	}
	if(noofloads){
		totalLoadsGallon = noofloads * dishWasherGallon;
	}
	//Flush
	var flushminutes = parseInt($('input[name=flushminutes]').val(),10);
	var flushGallon = 3;
	if(flushminutes){
		totalFlushGallon = flushminutes * flushGallon;
	}
	//LandScaping
	var lawnplantminutes = parseInt($('input[name=lawnplantminutes]').val(),10);
	var landscapingLawn = $('input[name=landscapingLawn]').val();
	var landScapingGallon = 2.5;
	if(landscapingLawn != 'No'){
		dishWasherGallon = 1;
	}
	if(lawnplantminutes){
		totalLandScapingGallon = lawnplantminutes * landScapingGallon;
	}
	//Other
	var other = $('input[name=other]').val();
	var otherGallon = 7;
	if(other != 'No'){
		otherGallon = 0;
	}
	if(noofpeople){
		totalOtherGallon = otherGallon * noofpeople;
	}
	
	grandTotal = totalShowerGallon+totalLaundaryGallon+totalBathGallon+totalLoadsGallon+totalFlushGallon+totalLandScapingGallon+totalOtherGallon;
	alert("Grand Total : " + grandTotal);
	
	percentShowerGallon=(totalShowerGallon/grandTotal)*100;
	percentLaundaryGallon=(totalLaundaryGallon/grandTotal)*100;
	percentBathGallon=(totalBathGallon/grandTotal)*100;
	percentLoadsGallon=(totalLoadsGallon/grandTotal)*100;
	percentFlushGallon=(totalFlushGallon/grandTotal)*100;
	percentLandScapingGallon=(totalLandScapingGallon/grandTotal)*100;
	percentOtherGallon=(totalOtherGallon/grandTotal)*100;
	
	
	drawChart();
	return false;
}


    
    
    function drawChart() {
    	
    	// Build the chart
        $('#container').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
            title: {
                text: 'Percentage Usage'
            },
            tooltip: {
        	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                type: 'pie',
                name: 'Type',
                data: [
                    ['Firefox',   45.0],
                    ['IE',       26.8],
                    ['Chrome', 12.8],
                    ['Safari',    8.5],
                    ['Opera',     6.2],
                    ['Others',   0.7]
                ]
            }]
        });
    }