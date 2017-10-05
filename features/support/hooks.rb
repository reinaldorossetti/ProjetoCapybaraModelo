AfterStep do |step|
  if $encoded_img != nil
    embed("data:image/gif;base64,#{$encoded_img}", 'image/png')
    $encoded_img.clear
  end
  $encoded_img = nil
end

# After do |scenario|
#   if scenario.failed?
#     sleep 1
#     if $browser != nil
#       obter_evidencia
#       embed("data:image/png;base64,#{$encoded_img}", 'image/png')
#     else
#       obter_evidencia_desktop
#       embed("data:image/png;base64,#{$encoded_img}", 'image/png')
#     end
#
#     $step_name = $passos[$step_name_index]
#     $status_run = 'Failed'
#   else
#     $status_run = 'Passed'
#   end
# end