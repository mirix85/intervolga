<?php

$dir = __DIR__ . '/upload';
$file = null;

if (isset($_FILES['f'])) {
    $file = (string) $_FILES['f']['name'];

    if (!file_exists($dir)) {
        mkdir($dir);
    }
}

$rows = array_map('trim', file($file));

foreach ($rows as $key => $row) {
    $data = array_map('trim', explode(',', $row));

    $exp = explode('.', $data[0]);
    $fileName = sprintf('%s.%s', $key+1, $exp[1]);
    $fileContext = $data[1];

    file_put_contents($dir."/".$fileName, $fileContext);
}