$html_files = Get-ChildItem -Filter *.html

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $content = Get-Content $file.FullName -Raw

    $pattern = '(?s)            <div class="d-flex justify-content-center gap-4 mb-4">(.*?)            <div class="d-flex justify-content-center mt-auto mb-4 w-100 px-3">'
    $replacement = '            <div class="d-flex justify-content-center gap-4 mb-4 mt-auto">$1            <div class="d-flex justify-content-center mb-4 w-100 px-3">'

    if ($content -match $pattern) {
        $content = $content -replace $pattern, $replacement
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8
    }
}

Write-Output "Done"
