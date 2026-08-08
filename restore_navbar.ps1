$navbar_apca = @"
    <!-- Navbar Reused -->
    <nav class="navbar navbar-expand-xl navbar-dark fixed-top navbar-glass">
        <div class="container-fluid px-4 px-lg-5">
            <a class="navbar-brand magnetic-wrap" href="index.html">
                <div class="brand-emblem">
                    <div class="brand-emblem-inner"><i data-lucide="settings"
                            style="color: var(--metallic-orange); width: 18px;"></i></div>
                </div>
                AP & CA
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMain"><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarMain">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link{0}" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link{1}" href="home-2.html">Home Premium</a></li>
                    <li class="nav-item"><a class="nav-link{2}" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link{3}" href="services.html">Services</a></li>
                    <li class="nav-item"><a class="nav-link{4}" href="shop.html">Products</a></li>
                    <li class="nav-item"><a class="nav-link{5}" href="categories.html">Categories</a></li>
                    <li class="nav-item"><a class="nav-link{6}" href="brands.html">Brands</a></li>
                    <li class="nav-item"><a class="nav-link{7}" href="contact.html">Contact</a></li>
                </ul>
                <div class="d-flex align-items-center gap-3">
                    <a href="#" class="text-white magnetic-wrap" id="themeToggle"><i data-lucide="moon"></i></a>
                    <a href="#" class="text-white magnetic-wrap" id="rtlToggle"><i
                            data-lucide="arrow-right-left"></i></a>
                    <a href="cart.html" class="text-white magnetic-wrap position-relative">
                        <i data-lucide="shopping-cart"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
                            style="background-color: var(--metallic-orange) !important;">
                            2
                        </span>
                    </a>
                    <a href="login.html" class="btn-secondary ms-3">Login</a>
                </div>
            </div>
        </div>
    </nav>
"@

$navbar_shop = @"
    <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom py-3">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center gap-2 fw-bold font-display text-primary" href="index.html">
                <i data-lucide="store"></i> FreshMarket
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <i data-lucide="menu"></i>
            </button>
            <div class="collapse navbar-collapse d-none d-lg-flex" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home 1</a></li>
                    <li class="nav-item"><a class="nav-link" href="home-2.html">Home 2</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                    <li class="nav-item"><a class="nav-link active" href="shop.html">Shop</a></li>
                    <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="dashboard.html">Dashboard</a></li>
                </ul>
                <div class="nav-controls">
                    <button class="nav-icon-btn"><i data-lucide="search"></i></button>
                    <a href="cart.html" class="nav-icon-btn">
                        <i data-lucide="shopping-cart"></i>
                        <span class="cart-badge" style="display: none;">0</span>
                    </a>
                    <button class="nav-icon-btn theme-toggle"><i data-lucide="moon"></i></button>
                    <button class="nav-icon-btn rtl-toggle"><i data-lucide="languages"></i></button>
                    <a href="login.html" class="nav-icon-btn"><i data-lucide="user"></i></a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Offcanvas Mobile Menu -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="mobileMenu">
        <div class="offcanvas-header border-bottom border-opacity-10">
            <h5 class="offcanvas-title fw-bold font-display text-primary d-flex align-items-center gap-2">
                <i data-lucide="store"></i> FreshMarket
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <ul class="navbar-nav mb-4">
                <li class="nav-item"><a class="nav-link fw-bold py-3 border-bottom" href="index.html">Home 1</a></li>
                <li class="nav-item"><a class="nav-link fw-bold py-3 border-bottom" href="home-2.html">Home 2</a></li>
                <li class="nav-item"><a class="nav-link fw-bold py-3 border-bottom" href="about.html">About</a></li>
                <li class="nav-item"><a class="nav-link fw-bold py-3 border-bottom" href="services.html">Services</a></li>
                <li class="nav-item"><a class="nav-link active fw-bold py-3 border-bottom text-primary" href="shop.html">Shop</a></li>
                <li class="nav-item"><a class="nav-link fw-bold py-3 border-bottom" href="pricing.html">Pricing</a></li>
                <li class="nav-item"><a class="nav-link fw-bold py-3 border-bottom" href="contact.html">Contact</a></li>
            </ul>
        </div>
    </div>
"@

$navbar_pricing = @"
    <nav class="navbar navbar-expand-lg navbar-custom scrolled">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <i data-lucide="store" style="color: var(--color-primary)"></i>
                <span>FreshMarket</span>
            </a>
            <button class="navbar-toggler border-0 shadow-none d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <i data-lucide="menu"></i>
            </button>
            <div class="collapse navbar-collapse d-none d-lg-flex" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home 1</a></li>
                    <li class="nav-item"><a class="nav-link" href="home-2.html">Home 2</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="shop.html">Shop</a></li>
                    <li class="nav-item"><a class="nav-link active" href="pricing.html">Pricing</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="dashboard.html">Dashboard</a></li>
                </ul>
                <div class="nav-controls">
                    <button class="nav-icon-btn"><i data-lucide="search"></i></button>
                    <a href="cart.html" class="nav-icon-btn">
                        <i data-lucide="shopping-cart"></i>
                        <span class="cart-badge" style="display: none;">0</span>
                    </a>
                    <button class="nav-icon-btn theme-toggle"><i data-lucide="moon"></i></button>
                    <button class="nav-icon-btn rtl-toggle"><i data-lucide="languages"></i></button>
                    <a href="login.html" class="nav-icon-btn"><i data-lucide="user"></i></a>
                </div>
            </div>
        </div>
    </nav>
"@

$files = @("about.html", "services.html", "shop.html", "pricing.html", "contact.html")

foreach ($f in $files) {
    if (Test-Path $f) {
        $content = Get-Content $f -Raw
        
        $newContent = $content -replace '(?s)<!--\s*Navbar.*?-->\s*<nav.*?(?=<main)', ''
        if ($newContent.Length -eq $content.Length) {
            $newContent = $content -replace '(?s)<nav.*?(?=<main)', ''
        }
        
        if ($f -eq "about.html") {
            $nav = $navbar_apca -f '', '', ' active', '', '', '', '', ''
            $finalContent = $newContent -replace '(?s)(<main[ >])', "$nav`r`n`r`n    `$1"
            Set-Content $f $finalContent -Encoding UTF8
        } elseif ($f -eq "services.html") {
            $nav = $navbar_apca -f '', '', '', ' active', '', '', '', ''
            $finalContent = $newContent -replace '(?s)(<main[ >])', "$nav`r`n`r`n    `$1"
            Set-Content $f $finalContent -Encoding UTF8
        } elseif ($f -eq "contact.html") {
            $nav = $navbar_apca -f '', '', '', '', '', '', '', ' active'
            # For contact we add scrolled
            $nav = $nav -replace 'navbar-glass"', 'navbar-glass scrolled"'
            $finalContent = $newContent -replace '(?s)(<main[ >])', "$nav`r`n`r`n    `$1"
            Set-Content $f $finalContent -Encoding UTF8
        } elseif ($f -eq "shop.html") {
            $finalContent = $newContent -replace '(?s)(<main[ >])', "$navbar_shop`r`n`r`n    `$1"
            Set-Content $f $finalContent -Encoding UTF8
        } elseif ($f -eq "pricing.html") {
            $finalContent = $newContent -replace '(?s)(<main[ >])', "$navbar_pricing`r`n`r`n    `$1"
            Set-Content $f $finalContent -Encoding UTF8
        }
        
        Write-Host "Restored $f"
    }
}
