$newMain = @"
    <main>
        <!-- Section 1: Hero -->
        <section class="about-hero mt-0 py-5 position-relative" style="background: url('https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=2000&auto=format&fit=crop') center/cover; height: 60vh; display: flex; align-items: center;">
            <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: linear-gradient(90deg, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0.4) 100%);"></div>
            <div class="container position-relative z-1 fade-up text-white">
                <div class="row justify-content-center text-center">
                    <div class="col-lg-10 col-xl-10">
                        <span class="subheading d-block mb-3 text-white">Our Legacy</span>
                        <h1 class="display-3 fw-bold mb-4">Fresh Groceries <br>Since 2010</h1>
                        <p class="lead mx-auto" style="max-width: 650px; color: rgba(255,255,255,0.9);">We don't just sell food; we curate the finest, freshest local produce and premium goods for your family.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 2: Company Story Timeline -->
        <section class="py-5 bg-surface">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-5 mb-5 mb-lg-0 fade-up">
                        <h2>The Evolution of Freshness</h2>
                        <p class="text-muted mt-3">From a small neighborhood stall to a complete online and physical premium grocery experience.</p>
                        <img src="https://images.unsplash.com/photo-1578916171728-46686eac8d58?w=800&q=80" class="img-fluid rounded mt-4 shadow" alt="The Evolution of Freshness">
                    </div>
                    <div class="col-lg-6 offset-lg-1 fade-up" style="transition-delay: 0.2s;">
                        <div class="timeline" style="border-left: 2px solid var(--color-primary); padding-left: 30px; margin-left: 15px;">
                            <div class="timeline-item position-relative mb-4">
                                <div style="position: absolute; left: -39px; top: 0; width: 16px; height: 16px; border-radius: 50%; background: var(--color-primary);"></div>
                                <h4 style="color: var(--color-primary);">2010</h4>
                                <h5>The Beginning</h5>
                                <p class="text-muted">Founded as a specialty local produce market.</p>
                            </div>
                            <div class="timeline-item position-relative mb-4">
                                <div style="position: absolute; left: -39px; top: 0; width: 16px; height: 16px; border-radius: 50%; background: var(--color-primary);"></div>
                                <h4 style="color: var(--color-primary);">2015</h4>
                                <h5>Farm Partnerships</h5>
                                <p class="text-muted">Secured direct supply lines with major local farms.</p>
                            </div>
                            <div class="timeline-item position-relative mb-4">
                                <div style="position: absolute; left: -39px; top: 0; width: 16px; height: 16px; border-radius: 50%; background: var(--color-primary);"></div>
                                <h4 style="color: var(--color-primary);">2019</h4>
                                <h5>Global Sourcing</h5>
                                <p class="text-muted">Expanded our logistics to bring international premium goods to your table.</p>
                            </div>
                            <div class="timeline-item position-relative mb-4">
                                <div style="position: absolute; left: -39px; top: 0; width: 16px; height: 16px; border-radius: 50%; background: var(--color-primary);"></div>
                                <h4 style="color: var(--color-primary);">Present Day</h4>
                                <h5>RubyBasket</h5>
                                <p class="text-muted">Supplying thousands of homes with top-tier groceries through our physical and online stores.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 3: Why Choose Us -->
        <section class="py-5 bg-white">
            <div class="container py-5">
                <div class="text-center mb-5 fade-up">
                    <h2 class="display-6">The Premium Advantage</h2>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-md-6 col-lg-3 fade-up">
                        <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                            <img src="https://images.unsplash.com/photo-1615485925600-97237c4fc1ec?w=400&q=80" class="w-100" style="height: 200px; object-fit: cover;" alt="Locally Sourced">
                            <div class="p-4">
                                <h4 class="mb-3">Locally Sourced</h4>
                                <p class="text-muted mb-0">Partnering directly with local farmers to ensure the freshest produce.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 fade-up" style="transition-delay: 0.1s;">
                        <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                            <img src="https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?w=400&q=80" class="w-100" style="height: 200px; object-fit: cover;" alt="Quality Assured">
                            <div class="p-4">
                                <h4 class="mb-3">Quality Assured</h4>
                                <p class="text-muted mb-0">Every item undergoes strict quality checks before reaching your cart.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 fade-up" style="transition-delay: 0.2s;">
                        <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                            <img src="https://images.unsplash.com/photo-1607344645866-009c320b63e0?w=400&q=80" class="w-100" style="height: 200px; object-fit: cover;" alt="Fast Delivery">
                            <div class="p-4">
                                <h4 class="mb-3">Fast Delivery</h4>
                                <p class="text-muted mb-0">Climate-controlled vehicles ensure your groceries arrive fresh and fast.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 fade-up" style="transition-delay: 0.3s;">
                        <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                            <img src="https://images.unsplash.com/photo-1542838132-92c53300491e?w=400&q=80" class="w-100" style="height: 200px; object-fit: cover;" alt="Exclusive Brands">
                            <div class="p-4">
                                <h4 class="mb-3">Exclusive Brands</h4>
                                <p class="text-muted mb-0">Access to limited imported goods and premium gourmet items.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 4: Certifications -->
        <section class="py-5 bg-surface">
            <div class="container py-5 fade-up">
                <h3 class="text-center mb-5">Food Safety & Quality Standards</h3>
                <div class="row g-4 justify-content-center">
                    <div class="col-6 col-md-3">
                        <div class="p-4 text-center bg-white rounded-4 shadow-sm border border-opacity-10 h-100 d-flex flex-column justify-content-center">
                            <h5 class="mb-0" style="color: var(--color-primary);">ISO 22000</h5>
                            <span class="text-muted small mt-2">Food Safety Management</span>
                        </div>
                    </div>
                    <div class="col-6 col-md-3">
                        <div class="p-4 text-center bg-white rounded-4 shadow-sm border border-opacity-10 h-100 d-flex flex-column justify-content-center">
                            <h5 class="mb-0" style="color: var(--color-primary);">Organic Certified</h5>
                            <span class="text-muted small mt-2">100% Authentic Produce</span>
                        </div>
                    </div>
                    <div class="col-6 col-md-3">
                        <div class="p-4 text-center bg-white rounded-4 shadow-sm border border-opacity-10 h-100 d-flex flex-column justify-content-center">
                            <h5 class="mb-0" style="color: var(--color-primary);">FDA Approved</h5>
                            <span class="text-muted small mt-2">Strict Compliance</span>
                        </div>
                    </div>
                    <div class="col-6 col-md-3">
                        <div class="p-4 text-center bg-white rounded-4 shadow-sm border border-opacity-10 h-100 d-flex flex-column justify-content-center">
                            <h5 class="mb-0" style="color: var(--color-primary);">Eco-Friendly</h5>
                            <span class="text-muted small mt-2">Sustainable Packaging</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
"@

$content = Get-Content 'about.html' -Raw
$content = $content -replace '(?s)<main>.*?</main>', $newMain
Set-Content 'about.html' $content -Encoding UTF8
