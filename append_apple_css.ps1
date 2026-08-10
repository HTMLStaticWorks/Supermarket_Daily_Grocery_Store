$css = @"

/* Apple Icon Dark Mode Fix */
[data-theme='dark'] .apple-icon {
    filter: invert(1);
}
"@
Add-Content -Path 'assets\css\style.css' -Value $css
