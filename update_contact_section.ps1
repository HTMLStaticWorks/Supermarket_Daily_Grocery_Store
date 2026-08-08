$newSection = @"
        <!-- Section 2: Contact Info & Form -->
        <section class="py-5 bg-surface">
            <div class="container py-5">
                <div class="card border-0 shadow-lg overflow-hidden rounded-4 fade-up">
                    <div class="row g-0">
                        <!-- Left Sidebar: Contact Info -->
                        <div class="col-lg-4 text-white p-5 position-relative" style="background: var(--color-primary);">
                            <!-- Decorative elements -->
                            <div style="position: absolute; bottom: -50px; right: -50px; width: 200px; height: 200px; background: rgba(255,255,255,0.1); border-radius: 50%;"></div>
                            <div style="position: absolute; top: 50px; right: 20px; width: 100px; height: 100px; background: rgba(255,255,255,0.1); border-radius: 50%;"></div>
                            
                            <div class="position-relative z-1 h-100 d-flex flex-column">
                                <h3 class="mb-4 text-white fw-bold">Contact Information</h3>
                                <p class="mb-5 text-white-50">Fill up the form and our team will get back to you within 24 hours.</p>
                                
                                <div class="d-flex align-items-center gap-3 mb-4">
                                    <i data-lucide="phone" class="text-white"></i>
                                    <div>
                                        <p class="mb-0 text-white fw-bold">+1 234 567 8900</p>
                                        <small class="text-white-50">Customer Care</small>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center gap-3 mb-4">
                                    <i data-lucide="mail" class="text-white"></i>
                                    <div>
                                        <p class="mb-0 text-white fw-bold">hello@rubybasket.com</p>
                                        <small class="text-white-50">General Support</small>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center gap-3 mb-5">
                                    <i data-lucide="map-pin" class="text-white"></i>
                                    <div>
                                        <p class="mb-0 text-white fw-bold">123 Market St, NY 10001</p>
                                        <small class="text-white-50">Main Headquarters</small>
                                    </div>
                                </div>
                                
                                <div class="mt-auto pt-5 border-top border-light border-opacity-25">
                                    <h5 class="text-white mb-3 fs-6">Follow Us</h5>
                                    <div class="d-flex gap-3">
                                        <a href="#" class="text-white opacity-75 hover-opacity-100"><i class="bi bi-facebook fs-5"></i></a>
                                        <a href="#" class="text-white opacity-75 hover-opacity-100"><i class="bi bi-twitter-x fs-5"></i></a>
                                        <a href="#" class="text-white opacity-75 hover-opacity-100"><i class="bi bi-instagram fs-5"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Right Side: Form -->
                        <div class="col-lg-8 p-4 p-md-5 bg-white">
                            <h3 class="mb-4 fw-bold" style="color: var(--color-primary);">Send us a Message</h3>
                            
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs mb-4 border-bottom-0" id="contactTabs" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active bg-transparent border-0 border-bottom border-2 border-primary fw-bold text-primary px-0 me-4" id="general-tab" data-bs-toggle="tab" data-bs-target="#general" type="button" role="tab">General Enquiry</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link bg-transparent border-0 border-bottom border-2 border-transparent text-muted px-0" id="b2b-tab" data-bs-toggle="tab" data-bs-target="#b2b" type="button" role="tab">Partner / Supplier</button>
                                </li>
                            </ul>
                            
                            <div class="tab-content" id="contactTabsContent">
                                <!-- General Form -->
                                <div class="tab-pane fade show active" id="general" role="tabpanel">
                                    <form>
                                        <div class="row g-4">
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">First Name</label>
                                                <input type="text" class="form-control border-secondary border-opacity-25" placeholder="e.g. John" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Last Name</label>
                                                <input type="text" class="form-control border-secondary border-opacity-25" placeholder="e.g. Doe" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Email Address</label>
                                                <input type="email" class="form-control border-secondary border-opacity-25" placeholder="john@example.com" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Subject</label>
                                                <select class="form-select border-secondary border-opacity-25 text-muted">
                                                    <option selected disabled>Choose a subject</option>
                                                    <option value="1">Order Status/Tracking</option>
                                                    <option value="2">Returns & Refunds</option>
                                                    <option value="3">Product Inquiry</option>
                                                    <option value="4">Website Feedback</option>
                                                    <option value="5">Other</option>
                                                </select>
                                            </div>
                                            <div class="col-12 mt-4">
                                                <label class="form-label text-muted small fw-bold">Message</label>
                                                <textarea class="form-control border-secondary border-opacity-25" rows="4" placeholder="Write your message here..." required></textarea>
                                            </div>
                                            <div class="col-12 text-end mt-5">
                                                <button type="submit" class="btn-primary-custom px-5 py-2 rounded-pill shadow-sm">Send Message <i data-lucide="send" class="ms-2" style="width: 16px;"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                
                                <!-- B2B Form -->
                                <div class="tab-pane fade" id="b2b" role="tabpanel">
                                    <form>
                                        <div class="row g-4">
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Company Name</label>
                                                <input type="text" class="form-control border-secondary border-opacity-25" placeholder="e.g. Acme Corp" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Contact Person</label>
                                                <input type="text" class="form-control border-secondary border-opacity-25" placeholder="e.g. Jane Smith" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Business Email</label>
                                                <input type="email" class="form-control border-secondary border-opacity-25" placeholder="jane@acmecorp.com" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label text-muted small fw-bold">Enquiry Type</label>
                                                <select class="form-select border-secondary border-opacity-25 text-muted">
                                                    <option selected disabled>Choose type</option>
                                                    <option value="1">Become a Supplier</option>
                                                    <option value="2">Bulk Corporate Orders</option>
                                                    <option value="3">Franchise Opportunities</option>
                                                </select>
                                            </div>
                                            <div class="col-12 mt-4">
                                                <label class="form-label text-muted small fw-bold">Message</label>
                                                <textarea class="form-control border-secondary border-opacity-25" rows="4" placeholder="Tell us about your business..." required></textarea>
                                            </div>
                                            <div class="col-12 text-end mt-5">
                                                <button type="submit" class="btn-primary-custom px-5 py-2 rounded-pill shadow-sm">Submit Request <i data-lucide="briefcase" class="ms-2" style="width: 16px;"></i></button>
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
"@

$content = Get-Content 'contact.html' -Raw
$content = $content -replace '(?s)<section class="py-5 bg-surface">.*?</section>\s*(?=<!-- Section 3)', $newSection
Set-Content 'contact.html' $content -Encoding UTF8
