$content = Get-Content -Path 'dashboard.html' -Raw
$content = $content -replace 'class="d-flex gap-3"', 'class="d-flex gap-3 align-items-center"'
Set-Content -Path 'dashboard.html' -Value $content -NoNewline
