let selectedDayElement = document.getElementById('selected-day');
let selectedMonthElement = document.getElementById('selected-month');
let selectedTimeElement = document.getElementById('selected-time');
let consultationCostElement = document.getElementById('consultation-cost');
let monthString = '';

//Variáveis do calendário
const today = new Date();
let currentMonth = today.getMonth();
let currentYear = today.getFullYear();
let selectedDay = null;
let selectedMonth = currentMonth;
let selectedYear = currentYear;

function renderCalendar(month, year) {
    const daysElement = document.getElementById('days');
    const monthYearElement = document.getElementById('monthYear');
    const firstDay = new Date(year, month).getDay();
    const daysInMonth = new Date(year, month + 1, 0).getDate();

    daysElement.innerHTML = "";
    monthYearElement.innerHTML = `${new Date(year, month).toLocaleString('default', { month: 'long' })} ${year}`;

    for (let i = 0; i < firstDay; i++) {
        daysElement.innerHTML += '<div></div>';
    }
    for (let day = 1; day <= daysInMonth; day++) {
        const dayElement = document.createElement('div');
        dayElement.textContent = day;
        dayElement.addEventListener('click', () => selectDate(day, month, year));
        daysElement.appendChild(dayElement);
    }
}

function selectDate(day, month, year) {
    selectedDay = day;
    selectedMonth = month;
    selectedYear = year;

    //Cria a string com o nome do mês selecionado por extenso
    if (selectedMonth === 0) {
        monthString = 'janeiro';
    } else if (selectedMonth === 1 ) {
        monthString = 'fevereiro';
    } else if (selectedMonth === 2) {
        monthString = 'março';
    } else if (selectedMonth === 3) {
        monthString = 'abril';
    } else if (selectedMonth === 4) {
        monthString = 'maio';
    } else if (selectedMonth === 5) {
        monthString = 'junho';
    } else if (selectedMonth === 6) {
        monthString = 'julho';
    } else if (selectedMonth === 7) {
        monthString = 'agosto';
    } else if (selectedMonth === 8) {
        monthString = 'setembro';
    } else if (selectedMonth === 9) {
        monthString = 'outubro';
    } else if (selectedMonth === 10) {
        monthString = 'novembro';
    } else if (selectedMonth === 11) {
        monthString = 'dezembro';
    } else {
        monthString = 'Mês inválido';
    }

    //Quando o usuário escolhe uma data no calendário exibe em "informações da consulta"
    if (selectedDayElement.innerHTML != null) {
        selectedDayElement.innerHTML = `${selectedDay} de ${monthString} às 09:00`;
        consultationCostElement.innerHTML = 'Valor: R$ 80,00';
    } else {
        selectedDayElement.innerHTML = ''
        selectedMonthElement.innerHTML = ''
        consultationCostElement.innerHTML = '';
    }
    console.log(`Data selecionada: ${selectedDay}/${selectedMonth + 1}/${selectedYear}`);
}

function prevMonth() {
    currentMonth = (currentMonth === 0) ? 11 : currentMonth - 1;
    currentYear = (currentMonth === 11) ? currentYear - 1 : currentYear;
    renderCalendar(currentMonth, currentYear);
}

function nextMonth() {
    currentMonth = (currentMonth === 11) ? 0 : currentMonth + 1;
    currentYear = (currentMonth === 0) ? currentYear + 1 : currentYear;
    renderCalendar(currentMonth, currentYear);
}

renderCalendar(currentMonth, currentYear);
