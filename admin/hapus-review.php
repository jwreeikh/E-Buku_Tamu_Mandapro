<?php
require_once '../config/app.php';
include '../config/koneksi.php';
include '../config/log.php';
/** @var mysqli $conn */

requireRole(['admin'], 'data-review.php');

$id = getIntParam($_GET, 'id');
if (!$id) {
    $_SESSION['error'] = 'ID review tidak valid.';
    header('Location: data-review.php');
    exit;
}

$stmt = mysqli_prepare($conn, "DELETE FROM review WHERE id = ? LIMIT 1");
mysqli_stmt_bind_param($stmt, 'i', $id);
$ok = mysqli_stmt_execute($stmt);
mysqli_stmt_close($stmt);

if ($ok) {
    $_SESSION['success'] = 'Review berhasil dihapus.';
    logAktivitas($conn, $_SESSION['user_id'], "Menghapus review ID $id");
} else {
    $_SESSION['error'] = 'Gagal menghapus review.';
}

header('Location: data-review.php');
exit;
?>
