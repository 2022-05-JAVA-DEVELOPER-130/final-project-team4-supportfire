

Highcharts.chart('container', {
	
	    title: {
	        text: '시세'
	    },
	
	    subtitle: {
	        text: '<a href="" target="_blank"></a>'
	    },
	
	    yAxis: {
	        title: {
	            text: '가격'
	            
	        }
	    },
	
	    xAxis: {
	        accessibility: {
	            rangeDescription: 'Range: 2019 to 2022'
	            
	        }
	    },
	
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },
	
	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 1,
	            pointEnd: 12
	        }
	    },
	
	       series: [{
	        name: '',
	        data: [
					160000, 48656, 65165, 81827, 0, 111111
					
					]
	    }],
	
		
	   
	    
	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }
	
	});



