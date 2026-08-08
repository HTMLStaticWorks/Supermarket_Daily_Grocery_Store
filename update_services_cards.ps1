$newCards = @"
                  <div class="row g-4">
                      <div class="col-md-4">
                          <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                              <img src="assets/images/Saved Lists.png" class="w-100" style="height: 240px; object-fit: cover;" alt="Saved Lists">
                              <div class="p-4">
                                  <h5 class="mb-3 fw-bold">Saved Lists</h5>
                                  <p class="text-muted mb-0">Create custom lists for 'Weekly Groceries', 'Party Supplies', or 'Breakfast Essentials'. Add them all to your cart with one click.</p>
                              </div>
                          </div>
                      </div>
                      <div class="col-md-4">
                          <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                              <img src="assets/images/Quick Reorder.png" class="w-100" style="height: 240px; object-fit: cover;" alt="Quick Reorder">
                              <div class="p-4">
                                  <h5 class="mb-3 fw-bold">Quick Reorder</h5>
                                  <p class="text-muted mb-0">Access your past order history and instantly reorder the items you buy most frequently.</p>
                              </div>
                          </div>
                      </div>
                      <div class="col-md-4">
                          <div class="card border-0 shadow-sm h-100 text-center overflow-hidden rounded-4">
                              <img src="assets/images/Favorites & Offers.png" class="w-100" style="height: 240px; object-fit: cover;" alt="Favorites & Offers">
                              <div class="p-4">
                                  <h5 class="mb-3 fw-bold">Favorites & Offers</h5>
                                  <p class="text-muted mb-0">Save items to your favorites and get notified when they go on sale. Enjoy personalized weekly deals.</p>
                              </div>
                          </div>
                      </div>
                  </div>
"@

$content = Get-Content 'services.html' -Raw
$content = $content -replace '(?s)<div class="row g-4">.*?</div>\s*</div>\s*</section>', "$newCards`r`n              </div>`r`n          </section>"
Set-Content 'services.html' $content -Encoding UTF8
