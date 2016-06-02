<?php

require_once(__DIR__ . '/quick/init.php');
require_once(__DIR__ . '/quick/xxtea.php');


function findPng($dir, array & $files)
{
    $dir = rtrim($dir, "/\\") . '/';
    $dh = opendir($dir);
    if ($dh == false) return;

    while (($file = readdir($dh)) !== false)
    {
        if ($file == '.' || $file == '..' || $file == ".DS_Store") { continue; }
        $path = $dir . $file;
        if (is_dir($path))
        {
            findPng($path, $files);
        }
        elseif (is_file($path))
        {
            if ( strpos($path, "png") > 0 ) {
                $files[] = $path;
            }
        }
    }
    closedir($dh);
}



$files = array();
findPng(__DIR__ . "/../../res" , $files);

$xxtea = new XXTEA();
$xxtea->setKey("d@n0po7386");

foreach ($files as $key => $path)
{
    file_put_contents($path, $xxtea->encrypt(file_get_contents($path)));
}


