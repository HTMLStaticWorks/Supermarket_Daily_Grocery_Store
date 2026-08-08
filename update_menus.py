import os
import re

new_offcanvas_body = """        <div class="offcanvas-body d-flex flex-column text-center">
            <ul class="navbar-nav flex-column mb-4 align-items-center w-100">
                <li class="nav-item"><a class="nav-link" href="index.html">Home 1</a></li>
                <li class="nav-item"><a class="nav-link" href="home-2.html">Home 2</a></li>
                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="shop.html">Shop</a></li>
                <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="dashboard.html">Dashboard</a></li>
            </ul>
            <div class="d-flex justify-content-center gap-4 mb-4">
                <button class="nav-icon-btn theme-toggle" aria-label="Toggle Theme">
                    <i data-lucide="moon"></i>
                </button>
                <button class="nav-icon-btn rtl-toggle" aria-label="Toggle RTL">
                    <i data-lucide="arrow-left-right"></i>
                </button>
            </div>
            <div class="d-flex justify-content-center mt-auto mb-4 w-100">
                <a href="login.html" class="btn-outline-custom w-100">Login</a>
            </div>
        </div>"""

new_full_offcanvas = """    <div class="offcanvas offcanvas-end" tabindex="-1" id="mobileMenu" aria-labelledby="mobileMenuLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="mobileMenuLabel">Menu</h5>
            <button type="button" class="btn-close-custom" data-bs-dismiss="offcanvas" aria-label="Close">
                <i data-lucide="x"></i>
            </button>
        </div>
""" + new_offcanvas_body + """
    </div>"""

html_files = [f for f in os.listdir('.') if f.endswith('.html')]

for file in html_files:
    if file == 'dashboard.html':
        continue
        
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
        
    # Case 1: Has full offcanvas-body
    pattern_full = r'        <div class="offcanvas-body">.*?</div>\s*</div>'
    
    # Case 2: Has <!-- ... --> placeholder
    pattern_placeholder = r'    <div class="offcanvas offcanvas-end" tabindex="-1" id="mobileMenu".*?>\s*<!-- \.\.\. -->\s*</div>'
    
    if re.search(pattern_placeholder, content):
        content = re.sub(pattern_placeholder, new_full_offcanvas, content)
    elif re.search(r'        <div class="offcanvas-body">', content):
        # We can just replace the offcanvas body part and the closing div of offcanvas
        content = re.sub(r'        <div class="offcanvas-body">.*?</div>\s*</div>', new_offcanvas_body + '\n    </div>', content, flags=re.DOTALL)
        
    # Restore the 'active' class based on filename if needed (simplification: we can just leave it un-active or restore it)
    # The active class logic is simple
    base = os.path.basename(file)
    content = content.replace(f'href="{base}">', f'href="{base}" class="active">')
    # Actually wait, the active class is added to class="nav-link", so:
    content = content.replace(f'<a class="nav-link" href="{base}">', f'<a class="nav-link active" href="{base}">')
    
    with open(file, 'w', encoding='utf-8') as f:
        f.write(content)
        
print("Done")
