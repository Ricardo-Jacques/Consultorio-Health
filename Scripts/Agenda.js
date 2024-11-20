nameInput = document.getElementById('Name');
cpfInput = document.getElementById('Cpf');
emailInput = document.getElementById('Email');
phoneInput = document.getElementById('Phone');

const emailRegex = /^[a-z0-9.]+@[a-z0-9]+\.[a-z]/i;

function ValidateForm() {
    if (!emailRegex.test(emailInput.value)) {
        emailInput.style.border = '2px solid #FF0000';
    } else {
        emailInput.style.border = '2px solid #008000';
    }
}
    function formatPhone() {
    var input = document.getElementById('Phone');

    if (value.length > 0) {
        value = '(' + value;
    }
    if (value.length > 3) {
        value = value.slice(0, 3) + ')' + value.slice(3);
    }
    if (value.length > 9) {
        value = value.slice(0, 9) + '-' + value.slice(9);
    }
    input.value = value;
}

