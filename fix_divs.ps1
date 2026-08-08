$html_files = Get-ChildItem -Filter *.html

foreach ($file in $html_files) {
    if ($file.Name -eq 'dashboard.html' -or $file.Name -eq '404.html') {
        continue
    }

    $content = Get-Content $file.FullName -Raw

    # Look for the new offcanvas block ending with an extra </div>
    $pattern = '(?s)(<div class="offcanvas-body d-flex flex-column text-center">.*?)    </div>\r?\n    </div>'
    
    if ($content -match $pattern) {
        # Replace the double </div> with a single one (since the offcanvas-end div is already closed by one </div>)
        $content = $content -replace $pattern, "`$1    </div>"
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8
    }
}
Write-Output "Fixed duplicate divs"
