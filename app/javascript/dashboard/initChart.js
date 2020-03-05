import Chart from 'chart.js';

export const initChart = () => {
  const ctx = document.getElementById('myChart').getContext('2d');
  const data = ctx.dataset.data;
  console.log(data)
  const myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
          datasets: [{
              label: 'Trees planted',
              data: [12, 19, 3, 5, 2, 3, 4],
              borderColor: 'rgb(255, 157, 0)',
              backgroundColor: 'rgba(255,255,255,0.0)',
              borderWidth: 2
          }]
      }
  });
}