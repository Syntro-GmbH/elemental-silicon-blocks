<section class="jarallax dark-mode bg-dark" data-jarallax data-speed="0.4">
  <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-70"></span>
<div class="jarallax-img" style="background-image: url({$Image.ScaleWidth(1800).URL});"></div>
  <div class="container position-relative zindex-5 pb-5 pt-5">


    <!-- Title -->
    <h1>$Title</h1>
    <% if Subtitle %>
      <h4 class="text-primary pb-1 mb-2">$Subtitle</h4>
    <% end_if %>
    <div class="fs-lg text-light opacity-70">
      $HTML
    </div>
</section>
