$html_files = Get-ChildItem -Filter *.html

$new_menu = @"
    <!-- Offcanvas Mobile Menu -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="mobileMenu" aria-labelledby="mobileMenuLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="mobileMenuLabel">Menu</h5>
            <button type="button" class="btn-close-custom" data-bs-dismiss="offcanvas" aria-label="Close">
                <i data-lucide="x"></i>
            </button>
        </div>
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
    </div>
"@

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $lines = Get-Content $file.FullName
    $new_lines = @()
    $in_menu = $false
    $div_depth = 0

    foreach ($line in $lines) {
        if ($line -match '<div.*id="mobileMenu"') {
            $in_menu = $true
            $div_depth = 1
            $new_lines += $new_menu
            continue
        }

        if ($in_menu) {
            # simple depth tracking
            if ($line -match '<div') {
                # count occurrences of <div
                $div_depth += ([regex]::Matches($line, '<div').Count)
            }
            if ($line -match '</div') {
                $div_depth -= ([regex]::Matches($line, '</div').Count)
            }

            if ($div_depth -le 0) {
                $in_menu = $false
            }
        } else {
            # filter out the previous offcanvas comment to avoid duplicates if any
            if ($line -notmatch '<!-- Offcanvas Mobile Menu') {
                $new_lines += $line
            }
        }
    }

    $content = $new_lines -join "`r`n"
    
    # fix the active link
    $base = $file.Name
    $content = $content -replace "<a class=`"nav-link`" href=`"$base`">", "<a class=`"nav-link active`" href=`"$base`">"
    
    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
}

Write-Output "Done"
