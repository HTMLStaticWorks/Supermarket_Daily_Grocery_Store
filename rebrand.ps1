$files = Get-ChildItem -Path "*.html"
$svg = '<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="me-2"><path d="M4 7H20L18.5 21H5.5L4 7Z" fill="var(--color-primary)" fill-opacity="0.2" stroke="var(--color-primary)" stroke-width="2" stroke-linejoin="round"/><path d="M8 7L12 3L16 7" stroke="var(--color-primary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><circle cx="12" cy="14" r="3" fill="var(--color-secondary)"/></svg>'

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $newContent = $content
    
    # 1. Replace all variations of the store lucide icon with the SVG
    $newContent = [regex]::Replace($newContent, '<i data-lucide="store"[^>]*></i>', $svg)
    
    # 2. Replace emails first
    $newContent = [regex]::Replace($newContent, 'hello@freshmarket\.com', 'hello@rubybasket.com', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    $newContent = [regex]::Replace($newContent, 'support@freshmarket\.com', 'support@rubybasket.com', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    
    # 3. Replace FreshMarket
    $newContent = [regex]::Replace($newContent, 'FreshMarket', 'RubyBasket')
    
    # 4. Replace lowercase freshmarket
    $newContent = [regex]::Replace($newContent, 'freshmarket', 'rubybasket')
    
    if ($newContent -cne $content) {
        [IO.File]::WriteAllText($file.FullName, $newContent, [System.Text.Encoding]::UTF8)
        Write-Host "Updated $($file.Name)"
    }
}
