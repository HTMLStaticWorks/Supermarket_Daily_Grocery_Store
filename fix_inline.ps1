$files = Get-ChildItem -Path "d:\August Websites\Supermarket & Daily Grocery Store" -Filter "*.html"
$count = 0

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    
    $regex = [regex] 'style="([^"]*)"'
    $newContent = $regex.Replace($content, {
        param($match)
        $inner = $match.Groups[1].Value
        $inner = [regex]::Replace($inner, '(?<=^|[;\s])left\s*:', 'inset-inline-start:')
        $inner = [regex]::Replace($inner, '(?<=^|[;\s])right\s*:', 'inset-inline-end:')
        return 'style="' + $inner + '"'
    })
    
    if ($content -cne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -NoNewline -Encoding UTF8
        $count++
    }
}
Write-Output "Updated $count HTML files."
