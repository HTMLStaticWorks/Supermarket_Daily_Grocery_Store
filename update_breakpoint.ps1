$html_files = Get-ChildItem -Filter *.html

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $content = Get-Content $file.FullName -Raw

    $content = $content -replace 'navbar-expand-lg', 'navbar-expand-xl'
    $content = $content -replace 'd-lg-none" type="button" data-bs-toggle="offcanvas"', 'd-xl-none" type="button" data-bs-toggle="offcanvas"'
    $content = $content -replace 'd-none d-lg-flex" id="navbarNav"', 'd-none d-xl-flex" id="navbarNav"'

    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
}

Write-Output "Done"
