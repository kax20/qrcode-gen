<?php

session_start();

include 'connection.php';
include 'phpqrcode/phpqrcode.php';

if($_SERVER['REQUEST_METHOD']=='POST'){
    $gen = $_POST['gen'];

    $dateGen = date("Y-m-d H:i:s");


$text = $gen; 
  
// $path variable store the location where to  
// store image and $file creates directory name 
// of the QR code file by using 'uniqid' 
// uniqid creates unique id based on microtime 

$file = uniqid().".png"; 
$path = 'images/'.$file; 
// $ecc stores error correction capability('L') 
$ecc = 'L'; 
$pixel_Size = 10; 
$frame_size = 10; 
  
// Generates QR Code and Stores it in directory given 
QRcode::png($text, $path, $ecc, $pixel_Size, $frame_size); 
  
// Displaying the stored QR code from directory 

//Insert Records into database

$RecordInsert = $db->prepare("INSERT INTO qrcode_gen(add_text,barcode,date_gen) VALUES(?,?,?)");
$RecordInsert->bind_param("sss",$gen,$file,$dateGen);

if($RecordInsert->execute()){
    //Success message

    $_SESSION['success'] = "<img src='$path'>";
    header("location: ./");
}


}





?>