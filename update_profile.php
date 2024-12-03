<?php
session_start();
include_once 'dbConnection.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_SESSION['email']; // Get email from the session
    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $college = $_POST['college'];

    // Update user information in the database
    $query = "UPDATE user SET name='$name', gender='$gender', college='$college' WHERE email='$email'";
    $result = mysqli_query($con, $query);

    if ($result) {
        header("Location: account.php?q=4");
    } else {
        header("Location: edit_profile.php?w=Error updating profile");
    }
}
?>