$newMain = @"
    <main>
        <!-- Section 1: Hero -->
        <section class="contact-hero mt-0 py-5 position-relative" style="background: url('https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=2000&auto=format&fit=crop') center/cover; height: 40vh; display: flex; align-items: center;">
            <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: linear-gradient(90deg, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0.4) 100%);"></div>
            <div class="container position-relative z-1 fade-up text-white text-center">
                <span class="subheading d-block mb-3 text-white">Get in Touch</span>
                <h1 class="display-3 fw-bold mb-4">We're Here to Help</h1>
            </div>
        </section>

        <!-- Section 2: Contact Info, Map & Form -->
        <section class="py-5 bg-surface">
            <div class="container py-4">
                <div class="row g-5">
                    <div class="col-lg-4 fade-up">
                        <div class="card border-0 shadow-sm text-center text-lg-start p-4 p-xl-5 h-100 rounded-4">
                            <h3 class="mb-4 text-break">Main Office</h3>
                            
                            <div class="d-flex justify-content-center justify-content-lg-start align-items-start gap-3 mb-4">
                                <i data-lucide="map-pin" style="color: var(--color-primary); flex-shrink: 0; margin-top: 5px;"></i>
                                <div class="text-start">
                                    <h5 class="mb-1">Address</h5>
                                    <p class="text-muted mb-0">123 Market St<br>New York, NY 10001<br>United States</p>
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-center justify-content-lg-start align-items-start gap-3 mb-4">
                                <i data-lucide="phone" style="color: var(--color-primary); flex-shrink: 0; margin-top: 5px;"></i>
                                <div class="text-start">
                                    <h5 class="mb-1">Phone</h5>
                                    <p class="text-muted mb-0">Customer Care: +1 234 567 8900<br>Corporate: +1 234 567 8901</p>
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-center justify-content-lg-start align-items-start gap-3 mb-5">
                                <i data-lucide="mail" style="color: var(--color-primary); flex-shrink: 0; margin-top: 5px;"></i>
                                <div class="text-start">
                                    <h5 class="mb-1">Email</h5>
                                    <p class="text-muted mb-0">hello@rubybasket.com<br>suppliers@rubybasket.com</p>
                                </div>
                            </div>
                            
                            <h5 class="mb-3">Store Hours</h5>
                            <p class="text-muted small">Monday - Saturday: 7:00 AM - 10:00 PM<br>Sunday: 8:00 AM - 8:00 PM</p>
                            
                            <h5 class="mb-3 mt-5">Connect With Us</h5>
                            <div class="d-flex justify-content-center justify-content-lg-start gap-3">
                                <a href="#" class="social-icon" aria-label="Facebook">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>
                                </a>
                                <a href="#" class="social-icon" aria-label="Twitter / X">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg>
                                </a>
                                <a href="#" class="social-icon" aria-label="Instagram">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-8 fade-up" style="transition-delay: 0.2s;">
                        <div class="card border-0 shadow-sm p-5 h-100 rounded-4">
                            <!-- Nav tabs for different enquiry types -->
                            <ul class="nav nav-tabs mb-4" id="contactTabs" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active bg-transparent border-0 fw-bold" style="color: var(--color-primary);" id="general-tab" data-bs-toggle="tab" data-bs-target="#general" type="button" role="tab">General Enquiry</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link bg-transparent border-0 text-muted" id="b2b-tab" data-bs-toggle="tab" data-bs-target="#b2b" type="button" role="tab">Partner / Supplier</button>
                                </li>
                            </ul>
                            
                            <div class="tab-content" id="contactTabsContent">
                                <!-- General Contact Form -->
                                <div class="tab-pane fade show active" id="general" role="tabpanel">
                                    <form>
                                        <div class="row g-3">
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="First Name" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="Last Name" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="email" class="form-control" placeholder="Email Address" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="Order Number (Optional)">
                                            </div>
                                            <div class="col-12">
                                                <select class="form-select">
                                                    <option selected disabled>Subject</option>
                                                    <option value="1">Order Status/Tracking</option>
                                                    <option value="2">Returns & Refunds</option>
                                                    <option value="3">Product Inquiry</option>
                                                    <option value="4">Website Feedback</option>
                                                    <option value="5">Other</option>
                                                </select>
                                            </div>
                                            <div class="col-12">
                                                <textarea class="form-control" rows="5" placeholder="How can we help you?" required></textarea>
                                            </div>
                                            <div class="col-12 text-end mt-4">
                                                <button type="submit" class="btn-primary-custom px-4 py-2">Send Message <i data-lucide="send" class="ms-2" style="width: 18px;"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                
                                <!-- B2B Contact Form -->
                                <div class="tab-pane fade" id="b2b" role="tabpanel">
                                    <form>
                                        <div class="row g-3">
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="Company Name" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="Contact Person" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="email" class="form-control" placeholder="Business Email" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="tel" class="form-control" placeholder="Phone Number" required>
                                            </div>
                                            <div class="col-12">
                                                <select class="form-select">
                                                    <option selected disabled>Enquiry Type</option>
                                                    <option value="1">Become a Supplier</option>
                                                    <option value="2">Bulk Corporate Orders</option>
                                                    <option value="3">Franchise Opportunities</option>
                                                </select>
                                            </div>
                                            <div class="col-12">
                                                <textarea class="form-control" rows="5" placeholder="Tell us about your business and inquiry..." required></textarea>
                                            </div>
                                            <div class="col-12 text-end mt-4">
                                                <button type="submit" class="btn-primary-custom px-4 py-2">Submit Request <i data-lucide="briefcase" class="ms-2" style="width: 18px;"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 3: Full Width Map -->
        <section class="map-section mt-5 fade-up" style="height: 400px;">
            <!-- Placeholder for map iframe -->
            <div class="w-100 h-100 bg-secondary" style="background: url('https://images.unsplash.com/photo-1524661135-423995f22d0b?q=80&w=2000&auto=format&fit=crop') center/cover;">
                <div class="w-100 h-100 d-flex justify-content-center align-items-center" style="background: rgba(255,255,255,0.2); backdrop-filter: blur(4px);">
                    <div class="bg-white p-3 rounded shadow d-flex align-items-center gap-2">
                        <i data-lucide="map-pin" style="color: var(--color-primary);"></i>
                        <span class="fw-bold">123 Market St, NY</span>
                    </div>
                </div>
            </div>
        </section>
    </main>
"@

$content = Get-Content 'contact.html' -Raw
$content = $content -replace '(?s)<main>.*?</main>', $newMain
Set-Content 'contact.html' $content -Encoding UTF8
