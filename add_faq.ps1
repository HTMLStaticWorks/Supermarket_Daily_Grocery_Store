$faqSection = @"
        <!-- Section 4: FAQ -->
        <section class="py-5 bg-white">
            <div class="container py-5 fade-up">
                <div class="text-center mb-5">
                    <span class="subheading d-block mb-2 text-primary fw-bold" style="color: var(--color-primary);">Got Questions?</span>
                    <h2 class="display-6 fw-bold">Frequently Asked Questions</h2>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="accordion accordion-flush" id="faqAccordion">
                            <!-- FAQ Item 1 -->
                            <div class="accordion-item border-bottom border-light mb-3">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-bold bg-transparent shadow-none px-0" type="button" data-bs-toggle="collapse" data-bs-target="#faq1">
                                        What are your delivery hours?
                                    </button>
                                </h2>
                                <div id="faq1" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted px-0">
                                        Our standard delivery hours are from 8:00 AM to 9:00 PM, seven days a week. You can choose a specific 2-hour delivery window at checkout.
                                    </div>
                                </div>
                            </div>
                            <!-- FAQ Item 2 -->
                            <div class="accordion-item border-bottom border-light mb-3">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-bold bg-transparent shadow-none px-0" type="button" data-bs-toggle="collapse" data-bs-target="#faq2">
                                        Do you deliver to my area?
                                    </button>
                                </h2>
                                <div id="faq2" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted px-0">
                                        We currently deliver to all major zip codes within a 20-mile radius of our store locations. Please enter your zip code on the cart page to verify delivery availability.
                                    </div>
                                </div>
                            </div>
                            <!-- FAQ Item 3 -->
                            <div class="accordion-item border-bottom border-light mb-3">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-bold bg-transparent shadow-none px-0" type="button" data-bs-toggle="collapse" data-bs-target="#faq3">
                                        What is your return policy for fresh produce?
                                    </button>
                                </h2>
                                <div id="faq3" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted px-0">
                                        We offer a 100% freshness guarantee. If you are not satisfied with the quality of your fresh produce, please contact us within 24 hours of delivery for a full refund or replacement.
                                    </div>
                                </div>
                            </div>
                            <!-- FAQ Item 4 -->
                            <div class="accordion-item border-bottom border-light mb-3">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-bold bg-transparent shadow-none px-0" type="button" data-bs-toggle="collapse" data-bs-target="#faq4">
                                        Can I modify or cancel my order after placing it?
                                    </button>
                                </h2>
                                <div id="faq4" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted px-0">
                                        Yes, you can modify or cancel your order up to 4 hours before your scheduled delivery time through your account dashboard or by contacting our customer care team.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
"@

$content = Get-Content 'contact.html' -Raw
$content = $content -replace '(?s)(</section>\s*</main>)', "`$1" # Just to make sure we find it
$content = $content -replace '(?s)</section>\s*</main>', "</section>`r`n`r`n$faqSection`r`n    </main>"
Set-Content 'contact.html' $content -Encoding UTF8
