<?php
if (isset($_GET['rubduck']))
{
	if (!empty($_GET['rubduck']))
	{
		$log = $_GET['rubduck'] . "\n";
		$file = fopen("./log.txt", "a+");
		fwrite($file, $log);
		fclose($file);
	} else {
		echo 'Empty param log';
	}
} else {
	echo 'No log param provided';
}
?>
