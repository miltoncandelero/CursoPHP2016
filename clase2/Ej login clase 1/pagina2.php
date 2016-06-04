    <!-- $_request es post y get a la vez -->
<?php
    $USR = $_POST['campousuario'];
    $PSW = $_POST['campoclave'];
    session_start();
    $_SESSION['AP1']['USR'] = $USR;
    $_SESSION['AP1']['PSW'] = $PSW;
    
    echo $USR . "<br>" . $PSW . "<br> <a href=\"pagina3.php\"> sig <a>";
    
?>