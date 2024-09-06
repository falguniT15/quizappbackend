<?php
session_start();
session_destroy();
header('Location: http://localhost/quizappbackend/login'); // Redirect to Vue login page after logout
exit;
?>
