$css = @"

/* Standard Card Dark Mode Fix */
[data-theme="dark"] .card {
  background-color: var(--bg-card) !important;
  border-color: var(--color-border) !important;
}
"@
Add-Content -Path 'assets\css\style.css' -Value $css
