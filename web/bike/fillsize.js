/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


(function($) {
  $.fn.fillsize = function(selector) {
    var $parent = this;
    var $img;

    function resize() {
      if (!$img) $img = $parent.find(selector);

      $img.each(function() {
        if (!this.complete) return;
        var $img = $(this);

        var parent = { height: $parent.innerHeight(), width: $parent.innerWidth() };
        var imageRatio     = $img.width() / $img.height();
        var containerRatio = parent.width / parent.height;

        var css = {
          position: 'absolute',
          left: 0, top: 0, right: 'auto', bottom: 'auto'
        };

        // If image is wider than the container
        if (imageRatio > containerRatio) {
          css.left = Math.round((parent.width - imageRatio * parent.height) / 2) + 'px';
          css.width = 'auto';
          css.height = '100%';
        }

        // If the container is wider than the image
        else {
          css.top = Math.round((parent.height - (parent.width / $img.width() * $img.height())) / 2) + 'px';
          css.height = 'auto';
          css.width = '100%';
        }

        $img.css(css);
      });
    }

    // Make it happen on window resize.
    $(window).resize(resize);

    // Allow manual invocation by doing `.trigger('fillsize')` on the container.
    $(document).on('fillsize', $parent.selector, resize);

    // Resize on first load (or immediately if called after).
    $(function() {
      // If the child is an image, fill it up when image's real dimensions are
      // first determined. Needs to be .bind() because the load event will
      // bubble up.
      $(selector, $parent).bind('load', function() {
        setTimeout(resize, 25);
      });

      resize();
    });

    return this;
  };
})(jQuery);

