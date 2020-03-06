import Chart from 'chart.js';

export const initChart = () => {
  const chart = document.getElementById('myChart');
  const ctx = chart.getContext('2d');
  const data = JSON.parse(chart.dataset.data);
  const myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
          datasets: [{
              label: 'Trees planted',
              data,
              borderColor: 'rgb(255, 157, 0)',
              backgroundColor: 'rgba(255,255,255,0.0)',
              borderWidth: 2
          }]
      }
  });
}
