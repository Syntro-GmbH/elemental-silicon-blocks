<% if $Style == 'simpleright' %>
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-{$LeftWidth} col-xl-{$getLeftWidth(-1)} order-md-1 order-2 d-flex d-sm-block flex-column pt-3 pt-md-0" data-jarallax-element="-25" data-disable-parallax-down="lg">
        $HTML
      </div>
      <div class="col-md-{$RightWidth} offset-xl-1 order-md-2 order-1" data-jarallax-element="25" data-disable-parallax-down="lg">
        <img src="$Image.ScaleWidth(1800).URL" class="d-block mx-auto rounded-3"  alt="$Image.Title">
      </div>
    </div>
  </div>
<% else %>
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-{$LeftWidth}" data-jarallax-element="25" data-disable-parallax-down="lg">
        <img src="$Image.ScaleWidth(1800).URL" class="d-block mx-auto rounded-3"  alt="$Image.Title">
      </div>
      <div class="col-md-{$RightWidth} col-xl-{$getRightWidth(-1)} offset-xl-1 d-flex d-sm-block flex-column pt-3 pt-md-0" data-jarallax-element="-25" data-disable-parallax-down="lg">
        $HTML
      </div>
    </div>
  </div>
<% end_if %>
