$files = "about.html", "cart.html", "contact.html", "pricing.html", "services.html", "shop.html"
foreach ($file in $files) {
    $content = Get-Content -Path $file -Raw -Encoding UTF8
    
    $pattern = '(?s)(<div class="nav-controls">)\s*<button class="nav-icon-btn"><i data-lucide="search"></i></button>\s*(<a href="cart\.html".*?</a>\s*<button class="nav-icon-btn theme-toggle"><i data-lucide="moon"></i></button>\s*<button class="nav-icon-btn rtl-toggle"><i data-lucide="arrow-left-right"></i></button>\s*)<a href="login\.html" class="nav-icon-btn"><i data-lucide="user"></i></a>\s*(</div>)'
    
    $replacement = '<div class="nav-controls d-flex align-items-center gap-2">
                    $2<a href="login.html" class="btn-primary-custom ms-2 px-3 py-1.5" aria-label="Login">Login</a>
                $3'
                
    $newContent = [regex]::Replace($content, $pattern, $replacement)
    
    if ($newContent -cne $content) {
        [IO.File]::WriteAllText($file, $newContent, [System.Text.Encoding]::UTF8)
        Write-Host "Updated $file"
    }
}
