$files = Get-ChildItem -Filter *.html

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    
    # Fix the missing newline between Home 2 and Shop
    $content = $content -replace '(href="home-2\.html">Home 2</a></li>)(<li class="nav-item">)', "$1`r`n                    `$2"
    
    # Fix the blank line that was left behind
    $content = $content -replace '(<li class="nav-item"><a class="nav-link(?: active)?" href="services\.html">Services</a></li>)\s*(<li class="nav-item"><a class="nav-link(?: active)?" href="pricing\.html">Pricing</a></li>)', "$1`r`n                    `$2"
    
    Set-Content -Path $file.FullName -Value $content -NoNewline
}
