<?php

function prime()
{
		 
	$array = array();
	for ($i = 0; $i <= 100; $i++) {
		$array[$i] = true;
	}

	$array[0] = false;
	$array[1] = false;

	for ($n = 2; $n <= 100; $n++) {
		for ($m = $n + $n; $m <= 100; $m += $n) {
			$array[$m] = false;
		}
	}

	$ret = array();
	for ($j = 0; $j <= 100; $j++) {
		if ($array[$j]) {
			 $ret[] = $j;
		}												
	}													
	return $ret;
}

echo join(', ', prime()) . "\n";
