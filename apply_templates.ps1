$head = Get-Content 'head_template.html' -Raw
$nav = Get-Content 'nav_template.html' -Raw
$footer = Get-Content 'footer_template.html' -Raw

$files = @("about.html", "services.html", "shop.html", "pricing.html", "contact.html")

foreach ($f in $files) {
    if (Test-Path $f) {
        $content = Get-Content $f -Raw
        
        # 1. Replace Head
        $content = $content -replace '(?s)<!DOCTYPE html>.*?</head>', $head
        
        # Update title based on page
        $titleName = $f.Replace('.html', '')
        $titleName = (Get-Culture).TextInfo.ToTitleCase($titleName)
        if ($titleName -eq 'About') { $titleName = 'About Us' }
        $content = $content -replace '<title>RubyBasket \| Home</title>', "<title>RubyBasket | $titleName</title>"

        # 2. Replace Nav and Offcanvas
        # First, strip out old navbar and offcanvas if they exist
        # Remove AP & CA navbar
        $content = $content -replace '(?s)<!--\s*Navbar.*?-->\s*<nav.*?(?=<main)', ''
        # Remove FreshMarket navbar
        $content = $content -replace '(?s)<nav class="navbar.*?id="mobileMenu".*?</div>\s*</div>\s*(?=<main)', ''
        # Catch any remaining nav (just in case)
        $content = $content -replace '(?s)<nav.*?(?=<main)', ''
        
        # Now inject the new nav
        # But wait, the new nav has 'active' on Home 1. We need to move it.
        $page_nav = $nav -replace 'nav-link active" href="index.html', 'nav-link" href="index.html'
        $page_nav = $page_nav -replace "nav-link`" href=`"$f`"", "nav-link active`" href=`"$f`""
        
        $content = $content -replace '(?s)<body>\s*', "<body>`r`n    <!-- Navbar -->`r`n$page_nav`r`n"
        
        # 3. Replace Footer
        # Remove existing footer
        $content = $content -replace '(?s)<!--\s*Footer.*?-->\s*<footer.*', ''
        $content = $content -replace '(?s)<footer.*', ''
        
        # Inject new footer
        $content = $content + "`r`n`r`n" + $footer
        
        Set-Content $f $content -Encoding UTF8
        Write-Host "Updated $f structure."
    }
}
