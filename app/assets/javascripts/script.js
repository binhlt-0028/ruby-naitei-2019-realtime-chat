$(document).ready(function () {
  flash_toastr();
})

function flash_toastr(){
  var $flash = $(".flash_msg");
  var $i=0;
  for($i=0;$i<$flash.length;$i++)
  {
    $f = $flash.eq($i);
    if ($f.hasClass("notice"))
      toastr.success($f.val());
    else if($f.hasClass("alert"))
      toastr.error($f.val());
  }
}
