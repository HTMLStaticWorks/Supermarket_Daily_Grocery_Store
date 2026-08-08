$html_files = Get-ChildItem -Filter *.html

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $content = Get-Content $file.FullName -Raw

    $pattern = '(?s)            <div class="d-flex justify-content-center gap-4 mb-4 mt-auto">'
    $replacement = '            <div class="d-flex justify-content-center gap-4 mb-4">'

    if ($content -match $pattern) {
        $content = $content -replace $pattern, $replacement
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8
    }
}

Write-Output "Done"
