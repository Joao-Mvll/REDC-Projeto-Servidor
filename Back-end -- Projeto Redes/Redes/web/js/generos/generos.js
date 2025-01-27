document.addEventListener('DOMContentLoaded', function () {
    const menuToggle = document.querySelector('.menu-toggle');
    const sidebar = document.querySelector('.sidebar');
    const content = document.querySelector('.content');

    menuToggle.addEventListener('click', function() {
        sidebar.classList.toggle('open');
        content.classList.toggle('shifted');
    });
});
