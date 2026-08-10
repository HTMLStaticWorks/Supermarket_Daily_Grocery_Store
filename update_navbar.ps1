$files = Get-ChildItem -Filter *.html

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    
    # The regex to capture Home 2, the lines in between, and Shop
    $pattern = '(?s)(<li class="nav-item"><a class="nav-link(?: active)?" href="home-2\.html">Home 2</a></li>)(.*?)(<li class="nav-item"><a class="nav-link(?: active)?" href="shop\.html">Shop</a></li>)'
    
    $newContent = [regex]::Replace($content, $pattern, '$1$3$2')
    
    if ($content -cne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -NoNewline
        Write-Host "Updated $($file.Name)"
    }
}
