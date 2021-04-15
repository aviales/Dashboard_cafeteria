const options = {
  chart: {
    type: 'bar'
  },
  series: [{
    name: 'sales',
    data: [50, 60, 35, 50, 89, 100, 70, 91, 125]
  }],
  xaxis: {
    categories: [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008]
  },
  theme: {
    monochrome: {
      enabled: true,
      color: '#03A9F4',
      shadeTo: 'light',
      shadeIntensity: 0.65
    }
  },
  responsive: [{
    breakpoint: 1000,
    options: {},
  }]

}

const chart = new ApexCharts(document.querySelector("#chart"), options);

chart.render();