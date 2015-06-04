<script type="text/javascript">
  <!-- Counting code -->
  $(document).ready(function(){
    // Way Points With Count To()
    $('.number-count').waypoint(function(down){
      if(!$(this).hasClass('stop-counter'))
      {
        $(this).countTo();
        $(this).addClass('stop-counter');
      }
    }, {
      offset: '90%'
    });
  });
</script>
