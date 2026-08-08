$html_files = Get-ChildItem -Filter *.html

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $content = Get-Content $file.FullName -Raw

    $pattern = '(?s)        <div class="offcanvas-header">\s*<h5 class="offcanvas-title" id="mobileMenuLabel">Menu</h5>\s*<button type="button" class="btn-close-custom" data-bs-dismiss="offcanvas" aria-label="Close">\s*<i data-lucide="x"></i>\s*</button>\s*</div>'
    
    $replacement = @"
        <div class="offcanvas-header justify-content-center gap-3 border-bottom pb-3">
            <h5 class="offcanvas-title mb-0" id="mobileMenuLabel">Menu</h5>
            <button type="button" class="btn-close-custom" data-bs-dismiss="offcanvas" aria-label="Close">
                <i data-lucide="x"></i>
            </button>
        </div>
"@

    # if not using border-bottom pb-3
    $replacement2 = @"
        <div class="offcanvas-header justify-content-center gap-3">
            <h5 class="offcanvas-title mb-0" id="mobileMenuLabel">Menu</h5>
            <button type="button" class="btn-close-custom" data-bs-dismiss="offcanvas" aria-label="Close">
                <i data-lucide="x"></i>
            </button>
        </div>
"@

    if ($content -match $pattern) {
        $content = $content -replace $pattern, $replacement2
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8
    }
}

Write-Output "Done"
