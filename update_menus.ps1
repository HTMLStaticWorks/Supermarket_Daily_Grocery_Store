$new_offcanvas_body = @"
        <div class="offcanvas-body d-flex flex-column text-center">
            <ul class="navbar-nav flex-column mb-4 align-items-center w-100">
                <li class="nav-item"><a class="nav-link" href="index.html">Home 1</a></li>
                <li class="nav-item"><a class="nav-link" href="home-2.html">Home 2</a></li>
                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="shop.html">Shop</a></li>
                <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="dashboard.html">Dashboard</a></li>
            </ul>
            <div class="d-flex justify-content-center gap-4 mb-4">
                <button class="nav-icon-btn theme-toggle" aria-label="Toggle Theme">
                    <i data-lucide="moon"></i>
                </button>
                <button class="nav-icon-btn rtl-toggle" aria-label="Toggle RTL">
                    <i data-lucide="arrow-left-right"></i>
                </button>
            </div>
            <div class="d-flex justify-content-center mt-auto mb-4 w-100 px-3">
                <a href="login.html" class="btn-primary-custom w-100 py-2">Login</a>
            </div>
        </div>
"@

$new_full_offcanvas = @"
    <div class="offcanvas offcanvas-end" tabindex="-1" id="mobileMenu" aria-labelledby="mobileMenuLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="mobileMenuLabel">Menu</h5>
            <button type="button" class="btn-close-custom" data-bs-dismiss="offcanvas" aria-label="Close">
                <i data-lucide="x"></i>
            </button>
        </div>
$new_offcanvas_body
    </div>
"@

$html_files = Get-ChildItem -Filter *.html

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $content = Get-Content $file.FullName -Raw

    $pattern_full = '(?s)        <div class="offcanvas-body">.*?</div>\s*</div>'
    $pattern_placeholder = '(?s)    <div class="offcanvas offcanvas-end" tabindex="-1" id="mobileMenu".*?>\s*<!-- \.\.\. -->\s*</div>'

    if ($content -match $pattern_placeholder) {
        $content = $content -replace $pattern_placeholder, $new_full_offcanvas
    } elseif ($content -match '        <div class="offcanvas-body">') {
        $replacement = $new_offcanvas_body + "`r`n    </div>"
        $content = $content -replace $pattern_full, $replacement
    }

    $base = $file.Name
    $content = $content -replace "<a class=`"nav-link`" href=`"$base`">", "<a class=`"nav-link active`" href=`"$base`">"

    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
}

Write-Output "Done"
