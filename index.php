<?php

session_start();


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="process.php" method="POST">

    <div class="form">

    <label>Add Text</label>

    <input type="text" name="gen" placeholder="Enter any value to generate QR code">

    <button type="submit">Generate QR Code</button>

</div>

<?php if(isset($_SESSION['success'])){?>

    <?=$_SESSION['success'];?>


<?php }unset($_SESSION['success']);?>

</form>
</body>
</html>