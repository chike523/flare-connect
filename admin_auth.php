<?php
// Error display
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

try {
    // Include with error checking
    if (file_exists('config/db.php')) {
        include('config/db.php');
    } else {
        throw new Exception("Cannot find config/db.php");
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username = isset($_POST['username']) ? trim($_POST['username']) : '';
        $password = isset($_POST['password']) ? $_POST['password'] : '';

        if (empty($username) || empty($password)) {
            throw new Exception("Username and password are required.");
        }

        $stmt = $conn->prepare("SELECT id, email, password, role FROM users WHERE email = ? AND role = 'admin' LIMIT 1");
        if (!$stmt) {
            throw new Exception("Prepare failed: " . $conn->error);
        }

        if (!$stmt->bind_param("s", $username)) {
            throw new Exception("Binding parameters failed: " . $stmt->error);
        }

        if (!$stmt->execute()) {
            throw new Exception("Execute failed: " . $stmt->error);
        }

        $stmt->bind_result($db_id, $db_email, $db_password, $db_role);

        if ($stmt->fetch()) {
            if (password_verify($password, $db_password) && $db_role === 'admin') {
                $_SESSION['admin_logged_in'] = true;
                header('Location: admin_dashboard.php');
                exit;
            } else {
                $error = "Invalid password.";
            }
        } else {
            $error = "Admin user not found.";
        }

        $stmt->close();
    }
} catch (Exception $e) {
    $error = $e->getMessage();
    error_log("Login error: " . $error);  // Log to server's error log
} finally {
    if (isset($conn)) $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Error</title>
    <link rel="icon" href="static/images/flarelogo.png">
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <div class="container">
        <h2>Login Failed</h2>
        <div class="error">
            <?php echo isset($error) ? htmlspecialchars($error) : 'An unknown error occurred.'; ?>
        </div>
        <p><a href="admin_login.php">Try again</a></p>
    </div>
</body>
</html>