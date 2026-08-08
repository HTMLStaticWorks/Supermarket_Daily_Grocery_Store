/**
 * main.js - Core Javascript for Supermarket & Daily Grocery Store
 * Handles: Theme toggle, RTL toggle, Page Loader, Navbar scroll, Cart state
 */

document.addEventListener('DOMContentLoaded', () => {
    // 1. Page Loader
    const loader = document.getElementById('page-loader');
    if (loader) {
        setTimeout(() => {
            loader.classList.add('hidden');
        }, 1500); // 1.5s delay to show off the premium loader
    }

    // 2. Theme Toggle (Dark/Light Mode)
    const themeToggles = document.querySelectorAll('.theme-toggle');
    const htmlElement = document.documentElement;
    
    // Check local storage or system preference
    const savedTheme = localStorage.getItem('theme');
    if (savedTheme) {
        htmlElement.setAttribute('data-theme', savedTheme);
        updateThemeIcons(savedTheme);
    } else if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
        htmlElement.setAttribute('data-theme', 'dark');
        updateThemeIcons('dark');
    }

    themeToggles.forEach(toggle => {
        toggle.addEventListener('click', (e) => {
            e.preventDefault();
            const currentTheme = htmlElement.getAttribute('data-theme');
            const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
            htmlElement.setAttribute('data-theme', newTheme);
            localStorage.setItem('theme', newTheme);
            updateThemeIcons(newTheme);
        });
    });

    function updateThemeIcons(theme) {
        // Toggle icon classes based on theme (assuming Lucide icons: sun and moon)
        themeToggles.forEach(toggle => {
            const icon = toggle.querySelector('i');
            if(icon) {
                if (theme === 'dark') {
                    icon.setAttribute('data-lucide', 'sun');
                } else {
                    icon.setAttribute('data-lucide', 'moon');
                }
            }
        });
        // Re-render lucide icons if the library is loaded
        if (typeof lucide !== 'undefined') {
            lucide.createIcons();
        }
    }

    // 3. RTL Toggle
    const rtlToggles = document.querySelectorAll('.rtl-toggle');
    
    rtlToggles.forEach(toggle => {
        toggle.addEventListener('click', (e) => {
            e.preventDefault();
            const currentDir = htmlElement.getAttribute('dir');
            const newDir = currentDir === 'rtl' ? 'ltr' : 'rtl';
            
            if (newDir === 'rtl') {
                htmlElement.setAttribute('dir', 'rtl');
                htmlElement.setAttribute('lang', 'ar');
                const bsStyle = document.getElementById('bs-style');
                if (bsStyle) bsStyle.href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css";
                
                if (!document.getElementById('custom-rtl-css')) {
                    const rtlCss = document.createElement('link');
                    rtlCss.rel = 'stylesheet';
                    rtlCss.href = 'assets/css/rtl.css';
                    rtlCss.id = 'custom-rtl-css';
                    document.head.appendChild(rtlCss);
                }
                localStorage.setItem('dir', 'rtl');
            } else {
                htmlElement.setAttribute('dir', 'ltr');
                htmlElement.setAttribute('lang', 'en');
                const bsStyle = document.getElementById('bs-style');
                if (bsStyle) bsStyle.href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css";
                
                const customRtlCss = document.getElementById('custom-rtl-css');
                if (customRtlCss) {
                    customRtlCss.remove();
                }
                localStorage.setItem('dir', 'ltr');
            }
        });
    });


    // 4. Sticky Navbar
    const navbar = document.querySelector('.navbar-custom');
    if (navbar) {
        window.addEventListener('scroll', () => {
            if (window.scrollY > 50) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
    }

    // 5. Basic Cart State (Badge update)
    updateCartBadge();

    // 6. Initialize Lucide Icons
    if (typeof lucide !== 'undefined') {
        lucide.createIcons();
    }

    // 7. 3D Mouse Tracking for Premium Cards
    const tiltCards = document.querySelectorAll('.tilt-card');
    tiltCards.forEach(card => {
        card.addEventListener('mousemove', (e) => {
            if (window.innerWidth < 992) return; // Disable on mobile
            
            const rect = card.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;
            
            const centerX = rect.width / 2;
            const centerY = rect.height / 2;
            
            const rotateX = ((y - centerY) / centerY) * -10; // Max 10 deg
            const rotateY = ((x - centerX) / centerX) * 10;
            
            card.style.transform = `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) scale3d(1.02, 1.02, 1.02)`;
        });
        
        card.addEventListener('mouseleave', () => {
            card.style.transform = `perspective(1000px) rotateX(0deg) rotateY(0deg) scale3d(1, 1, 1)`;
        });
    });

    // 8. Shop Product Grid Rendering
    const shopGrid = document.getElementById('shop-product-grid');
    if (shopGrid && window.groceryProducts) {
        const categoryButtons = document.querySelectorAll('.custom-scrollbar button');
        const countSpan = document.querySelector('.text-muted span.fw-bold.text-dark');
        
        function renderProducts(category) {
            let filtered = window.groceryProducts;
            if (category && category !== 'All Products') {
                filtered = filtered.filter(p => p.category === category);
            }
            
            // Limit to 8 cards for categories, show all for All Products
            if (category !== 'All Products') {
                filtered = filtered.slice(0, 8);
            }
            
            shopGrid.innerHTML = '';
            
            if (filtered.length === 0) {
                shopGrid.innerHTML = '<div class="col-12 text-center py-5"><p class="text-muted">No products found.</p></div>';
            } else {
                filtered.forEach(product => {
                    const discountHtml = product.discount ? `<span class="badge bg-danger position-absolute top-0 start-0 m-3 z-1">${product.discount}% OFF</span>` : '';
                    const oldPriceHtml = product.oldPrice ? `<span class="fs-6 text-muted text-decoration-line-through">$${product.oldPrice.toFixed(2)}</span>` : '';
                    
                    const card = `
                    <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                        <div class="card-premium h-100 text-center p-3 position-relative">
                            ${discountHtml}
                            <div class="position-relative mb-3 bg-light rounded-3 overflow-hidden" style="aspect-ratio: 1;">
                                <img src="${product.image}" alt="${product.name}" class="img-fluid object-fit-cover w-100 h-100 mix-blend-multiply">
                            </div>
                            <div class="text-start">
                                <p class="small text-muted mb-1">${product.category}</p>
                                <h6 class="fw-bold mb-2 text-truncate">${product.name}</h6>
                                <div class="d-flex justify-content-between align-items-center mt-3">
                                    <h5 class="text-primary fw-bold mb-0">$${product.price.toFixed(2)} ${oldPriceHtml}</h5>
                                    <button class="btn-icon-primary rounded-circle shadow-sm add-to-cart-btn" data-id="${product.id}" aria-label="Add to cart"><i data-lucide="plus"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    `;
                    shopGrid.insertAdjacentHTML('beforeend', card);
                });
            }
            
            if (countSpan) {
                countSpan.textContent = filtered.length;
            }
            if (typeof lucide !== 'undefined') lucide.createIcons();
        }

        // Initial render
        renderProducts('All Products');

        // Add event listeners to buttons
        if (categoryButtons.length > 0) {
            categoryButtons.forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.preventDefault();
                    // Update active button state
                    categoryButtons.forEach(b => {
                        b.classList.remove('btn-primary');
                        b.classList.add('btn-outline-secondary');
                    });
                    btn.classList.remove('btn-outline-secondary');
                    btn.classList.add('btn-primary');
                    
                    const categoryText = btn.textContent.trim();
                    renderProducts(categoryText);
                });
            });
        }
    }
});

// Helper for Cart
function updateCartBadge() {
    const badges = document.querySelectorAll('.cart-badge');
    const savedCart = JSON.parse(localStorage.getItem('cart')) || [];
    let totalItems = savedCart.reduce((sum, item) => sum + item.quantity, 0);
    
    badges.forEach(badge => {
        badge.textContent = totalItems;
        if(totalItems > 0) {
            badge.style.display = 'flex';
        } else {
            badge.style.display = 'none';
        }
    });
}

// Cart API
window.CartManager = {
    getCart() {
        return JSON.parse(localStorage.getItem('cart')) || [];
    },
    saveCart(cart) {
        localStorage.setItem('cart', JSON.stringify(cart));
        updateCartBadge();
    },
    addToCart(product, quantity = 1) {
        const cart = this.getCart();
        const existingItem = cart.find(item => item.id === product.id);
        
        if (existingItem) {
            existingItem.quantity += quantity;
        } else {
            cart.push({ ...product, quantity });
        }
        
        this.saveCart(cart);
        // Dispatch custom event for UI updates
        window.dispatchEvent(new CustomEvent('cartUpdated'));
    },
    removeFromCart(productId) {
        let cart = this.getCart();
        cart = cart.filter(item => item.id !== productId);
        this.saveCart(cart);
        window.dispatchEvent(new CustomEvent('cartUpdated'));
    },
    updateQuantity(productId, quantity) {
        const cart = this.getCart();
        const item = cart.find(item => item.id === productId);
        if (item) {
            item.quantity = quantity;
            if (item.quantity <= 0) {
                this.removeFromCart(productId);
                return;
            }
            this.saveCart(cart);
            window.dispatchEvent(new CustomEvent('cartUpdated'));
        }
    },
    clearCart() {
        this.saveCart([]);
        window.dispatchEvent(new CustomEvent('cartUpdated'));
    }
};

// Global Add to Cart Click Listener
document.addEventListener('click', (e) => {
    const btn = e.target.closest('.add-to-cart-btn');
    if (btn) {
        const productId = btn.getAttribute('data-id');
        let productToAdd = window.groceryProducts ? window.groceryProducts[0] : null;
        
        if (productId && window.groceryProducts) {
            const found = window.groceryProducts.find(p => p.id === parseInt(productId, 10));
            if (found) productToAdd = found;
        }
        
        if (!productToAdd) {
            productToAdd = { id: 1, name: 'Demo Product', price: 2.99, image: 'https://images.unsplash.com/photo-1603833665858-e61d17a86224?w=100&q=80' };
        }
        
        window.CartManager.addToCart(productToAdd);
        
        // Simple animation
        btn.innerHTML = '<i data-lucide="check" size="18"></i> Added';
        if (typeof lucide !== 'undefined') lucide.createIcons();
        
        setTimeout(() => {
            btn.innerHTML = '<i data-lucide="shopping-cart" size="18"></i> Add to Cart';
            if (typeof lucide !== 'undefined') lucide.createIcons();
        }, 2000);
    }
});

// Scroll to Top Button
document.addEventListener('DOMContentLoaded', () => {
    const scrollToTopBtn = document.createElement('button');
    scrollToTopBtn.className = 'scroll-to-top';
    scrollToTopBtn.innerHTML = '<i data-lucide="arrow-up"></i>';
    scrollToTopBtn.setAttribute('aria-label', 'Scroll to top');
    document.body.appendChild(scrollToTopBtn);
    if (typeof lucide !== 'undefined') lucide.createIcons();

    window.addEventListener('scroll', () => {
        if (window.scrollY > 300) {
            scrollToTopBtn.classList.add('show');
        } else {
            scrollToTopBtn.classList.remove('show');
        }
    });

    scrollToTopBtn.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
});

