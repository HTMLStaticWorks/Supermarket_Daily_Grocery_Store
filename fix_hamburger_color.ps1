$css = @"

/* Navbar Toggler Color Fix */
.navbar-toggler {
    color: var(--color-text-main) !important;
}
"@
Add-Content -Path 'assets\css\style.css' -Value $css
