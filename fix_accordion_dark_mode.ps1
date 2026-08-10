$css = @"

/* Accordion Dropdown Icon Dark Mode Fix */
[data-theme="dark"] .accordion-button::after {
    filter: invert(1) brightness(2);
}
"@
Add-Content -Path 'assets\css\style.css' -Value $css
