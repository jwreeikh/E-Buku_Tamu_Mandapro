<?php
require_once '../config/app.php';
require_once '../config/koneksi.php';
require_once '../config/log.php';
/** @var mysqli $conn */

requireLogin('login.php');

$tamu_id = getIntParam($_GET, 'id');

if (!$tamu_id) {
    $_SESSION['error'] = 'ID tamu tidak valid.';
    header('Location: data-instansi.php');
    exit;
}

$stmt = mysqli_prepare($conn, "SELECT id, nama, kategori_tamu, file_pdf FROM tamu WHERE id = ? LIMIT 1");
mysqli_stmt_bind_param($stmt, 'i', $tamu_id);
mysqli_stmt_execute($stmt);
$tamu = mysqli_fetch_assoc(mysqli_stmt_get_result($stmt));
mysqli_stmt_close($stmt);

if (!$tamu || $tamu['kategori_tamu'] !== 'instansi') {
    $_SESSION['error'] = 'Upload PDF hanya tersedia untuk data kunjungan instansi.';
    header('Location: data-instansi.php');
    exit;
}

$nama_tamu = e($tamu['nama']);
$current_pdf = $tamu['file_pdf'] ?? '';

if (isset($_POST['upload'])) {
    $file = $_FILES['file_pdf'] ?? null;

    if (!$file || $file['error'] !== UPLOAD_ERR_OK) {
        $_SESSION['error'] = 'Pilih file PDF yang valid untuk diunggah.';
    } else {
        $file_ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
        $finfo = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($finfo, $file['tmp_name']);
        finfo_close($finfo);

        if ($file_ext !== 'pdf' || $mime !== 'application/pdf') {
            $_SESSION['error'] = 'Upload ditolak. Sistem hanya menerima file berformat PDF.';
        } elseif ($file['size'] > 5 * 1024 * 1024) {
            $_SESSION['error'] = 'Ukuran file terlalu besar. Maksimal 5MB.';
        } else {
            $uploadDir = '../uploads/pdfs';
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0777, true);
            }

            $new_file_name = uniqid('pdf_', true) . '.pdf';
            $file_destination = $uploadDir . '/' . $new_file_name;

            if (move_uploaded_file($file['tmp_name'], $file_destination)) {
                if ($current_pdf && is_file($uploadDir . '/' . basename($current_pdf))) {
                    unlink($uploadDir . '/' . basename($current_pdf));
                }

                $stmt = mysqli_prepare($conn, "UPDATE tamu SET file_pdf = ? WHERE id = ? LIMIT 1");
                mysqli_stmt_bind_param($stmt, 'si', $new_file_name, $tamu_id);
                $ok = mysqli_stmt_execute($stmt);
                mysqli_stmt_close($stmt);

                if ($ok) {
                    logAktivitas($conn, $_SESSION['user_id'], "Mengunggah PDF untuk tamu instansi ID $tamu_id ({$tamu['nama']})");
                    $_SESSION['success'] = 'File PDF berhasil diunggah.';
                    header('Location: data-instansi.php');
                    exit;
                }

                $_SESSION['error'] = 'Gagal menyimpan informasi PDF ke database.';
            } else {
                $_SESSION['error'] = 'Gagal memindahkan file yang diunggah.';
            }
        }
    }
}

include '../layouts/header.php';
include '../layouts/sidebar.php';
?>

<div class="card p-4 shadow-lg border-radius-xl">
    <h5 class="mb-4">Upload / Lihat PDF untuk Tamu: <?= $nama_tamu ?></h5>

    <?php if (isset($_SESSION['success'])): ?>
        <div class="alert alert-success text-white" role="alert"><?= e($_SESSION['success']); unset($_SESSION['success']); ?></div>
    <?php endif; ?>
    <?php if (isset($_SESSION['error'])): ?>
        <div class="alert alert-danger text-white" role="alert"><?= e($_SESSION['error']); unset($_SESSION['error']); ?></div>
    <?php endif; ?>

    <div class="mb-4">
        <?php if ($current_pdf): ?>
            <p class="text-sm mb-2">File PDF saat ini:</p>
            <a href="../uploads/pdfs/<?= e(basename($current_pdf)); ?>" target="_blank" class="btn btn-info btn-sm">
                <i class="fas fa-file-pdf me-1"></i> Lihat / Download PDF
            </a>
            <hr class="my-3">
        <?php else: ?>
            <p class="text-sm text-muted">Belum ada file PDF yang diunggah untuk tamu ini.</p>
        <?php endif; ?>
    </div>

    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="file_pdf" class="form-label">Pilih File PDF (Maks 5MB)</label>
            <input class="form-control" type="file" id="file_pdf" name="file_pdf" accept="application/pdf,.pdf" required>
        </div>
        <button type="submit" name="upload" class="btn bg-gradient-primary">
            <i class="fas fa-upload me-1"></i> Unggah PDF
        </button>
        <a href="data-instansi.php" class="btn btn-secondary">
            <i class="fas fa-arrow-left me-1"></i> Kembali
        </a>
    </form>
</div>

<?php include '../layouts/footer.php'; ?>
