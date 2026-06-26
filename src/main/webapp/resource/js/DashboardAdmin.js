const ctx = document.getElementById('graficoNotas');

new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['Aprobados', 'Desaprobados'],
        datasets: [{
            data: [aprobados, desaprobados],
            backgroundColor: ['#198754', '#dc3545']
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                display: false
            }
        }
    }
});