$files = Get-ChildItem -Filter *.html

foreach ($file in $files) {
    if ($file.Name -in @("404.html", "dashboard.html", "login.html", "register.html")) { continue }

    # Get original content from git
    $originalContent = git show HEAD:$($file.Name)
    $originalContent = $originalContent -join "`r`n"

    $currentContent = Get-Content -Path $file.FullName -Raw

    # Desktop Nav
    if ($originalContent -match '(?s)(<ul class="navbar-nav mx-auto">)(.*?)(</ul>)') {
        $origDesktop = $matches[2]
        
        if ($origDesktop -match '(?s)(.*?)\s*(<li class="nav-item"><a class="nav-link(?: active)?" href="shop\.html">Shop</a></li>)(.*)') {
            $shopLine = $matches[2]
            $restOfNav = $matches[1] + $matches[3]
            
            $newDesktop = $restOfNav -replace '(?s)(<li class="nav-item"><a class="nav-link(?: active)?" href="home-2\.html">Home 2</a></li>)', "`$1`r`n                    $shopLine"
            
            $currentContent = $currentContent -replace '(?s)(<ul class="navbar-nav mx-auto">).*?(</ul>)', "`$1$newDesktop`$2"
        }
    }
    
    # Mobile Nav
    if ($originalContent -match '(?s)(<ul class="navbar-nav flex-column mb-4 align-items-center w-100">)(.*?)(</ul>)') {
        $origMobile = $matches[2]
        
        if ($origMobile -match '(?s)(.*?)\s*(<li class="nav-item"><a class="nav-link(?: active)?" href="shop\.html">Shop</a></li>)(.*)') {
            $shopLine = $matches[2]
            $restOfNav = $matches[1] + $matches[3]
            
            $newMobile = $restOfNav -replace '(?s)(<li class="nav-item"><a class="nav-link(?: active)?" href="home-2\.html">Home 2</a></li>)', "`$1`r`n                $shopLine"
            
            $currentContent = $currentContent -replace '(?s)(<ul class="navbar-nav flex-column mb-4 align-items-center w-100">).*?(</ul>)', "`$1$newMobile`$2"
        }
    }

    Set-Content -Path $file.FullName -Value $currentContent -NoNewline
}
