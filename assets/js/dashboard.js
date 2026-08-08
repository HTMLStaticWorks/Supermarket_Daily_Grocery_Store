/**
 * dashboard.js - Customer Dashboard Specific Logic
 */

document.addEventListener('DOMContentLoaded', () => {
    // 1. Mobile Sidebar Toggle
    const sidebar = document.getElementById('dashboardSidebar');
    const toggleBtn = document.getElementById('sidebarToggleBtn');
    
    if (toggleBtn && sidebar) {
        toggleBtn.addEventListener('click', () => {
            sidebar.classList.toggle('show');
        });
        
        // Close sidebar when clicking outside on mobile
        document.addEventListener('click', (e) => {
            if (window.innerWidth < 992) {
                if (!sidebar.contains(e.target) && !toggleBtn.contains(e.target) && sidebar.classList.contains('show')) {
                    sidebar.classList.remove('show');
                }
            }
        });
    }

    // 2. Initialize CountUp.js for Overview Statistics
    const counters = document.querySelectorAll('.count-up');
    if (counters.length > 0 && typeof countUp !== 'undefined') {
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const target = entry.target;
                    const endVal = parseFloat(target.getAttribute('data-target'));
                    
                    const count = new countUp.CountUp(target, endVal, {
                        duration: 2,
                        separator: ','
                    });
                    
                    if (!count.error) {
                        count.start();
                    }
                    observer.unobserve(target);
                }
            });
        }, { threshold: 0.1 });
        
        counters.forEach(counter => observer.observe(counter));
    }
    
    // 3. Sidebar Tab Switching Logic
    const sidebarLinks = document.querySelectorAll('.dashboard-sidebar .sidebar-link[href^="#"]');
    const dashboardSections = document.querySelectorAll('.dashboard-main > section[id]');

    if (sidebarLinks.length > 0 && dashboardSections.length > 0) {
        // Initially hide all sections except the active one
        let activeSectionId = document.querySelector('.dashboard-sidebar .sidebar-link.active')?.getAttribute('href') || '#overview';
        
        dashboardSections.forEach(section => {
            if ('#' + section.id === activeSectionId) {
                section.style.display = 'block';
            } else {
                section.style.display = 'none';
            }
        });

        sidebarLinks.forEach(link => {
            link.addEventListener('click', (e) => {
                e.preventDefault();
                
                // Remove active class from all links
                sidebarLinks.forEach(l => l.classList.remove('active'));
                
                // Add active class to clicked link
                link.classList.add('active');
                
                const targetId = link.getAttribute('href');
                
                // Show target section, hide others
                dashboardSections.forEach(section => {
                    if ('#' + section.id === targetId) {
                        section.style.display = 'block';
                        // Trigger count up animation again if inside the section
                        const counters = section.querySelectorAll('.count-up');
                        if (counters.length > 0 && typeof countUp !== 'undefined') {
                            counters.forEach(counter => {
                                const endVal = parseFloat(counter.getAttribute('data-target'));
                                const count = new countUp.CountUp(counter, endVal, {
                                    duration: 2,
                                    separator: ','
                                });
                                if (!count.error) count.start();
                            });
                        }
                    } else {
                        section.style.display = 'none';
                    }
                });

                // Close sidebar on mobile after clicking a link
                if (window.innerWidth < 992 && sidebar) {
                    sidebar.classList.remove('show');
                }
            });
        });
    }
    
    // 4. Initialize Lucide Icons again just in case (handled globally but safe here)
    if (typeof lucide !== 'undefined') {
        lucide.createIcons();
    }
});
