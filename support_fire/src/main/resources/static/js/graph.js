

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
	            pointStart: 2019,
	            pointEnd: 2022
	        }
	    },
	
	       series: [{
	        name: '',
	        data: [43934, 48656, 65165, 81827]
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



