<?php

$array = [1, 3, 2, 42, 5, 7, 21, 8];

$a = 'test';

for ($i=count($array); $i>0; $i--) {
    if (preg_match('~(\d+)?2(\d+)?~ui', $array[$i])) {
        for ($j=count($array)-1; $j>$i; $j--) {
            $array[$j+1] = $array[$j];
        }

        $array[$i+1] = $a;
    }
}

print_r($array);