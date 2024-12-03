<?php
session_start();
include_once 'dbConnection.php';

if (!isset($_SESSION['email'])) {
    header("location:index.php");
} else {
    $email = $_SESSION['email'];

    // Fetch user data to prefill the form
    $query = mysqli_query($con, "SELECT * FROM user WHERE email='$email'") or die('Error fetching data');
    $user = mysqli_fetch_array($query);
    $name = $user['name'];
    $gender = $user['gender'];
    $college = $user['college'];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
        <h2>Edit Your Profile</h2>
        <form action="update_profile.php" method="POST">
            <div class="form-group">
                <label for="name">Nome:</label>
                <input type="text" class="form-control" id="name" name="name" value="<?php echo $name; ?>" required>
            </div>
            <div class="form-group">
                <label for="gender">Gênero:</label>
                <select class="form-control" id="gender" name="gender" required>
                    <option value="Male" <?php if ($gender == 'M') echo 'selected'; ?>>Masculino</option>
                    <option value="Female" <?php if ($gender == 'F') echo 'selected'; ?>>Feminino</option>
                    <option value="Other" <?php if ($gender == 'Outro') echo 'selected'; ?>>Outro</option>
                </select>
            </div>
            <div class="form-group">
                <label for="college">Escola:</label>
                <input type="text" class="form-control" id="college" name="college" value="<?php echo $college; ?>" required>
            </div>
            <button type="submit" class="btn btn-primary">Salvar mudanças</button>
            <a href="account.php?q=4" class="btn btn-default">Cancelar</a>
        </form>
    </div>
</body>
</html>

