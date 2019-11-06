$(function(){
  var index=$('.works_output').length

  $(".image_form").on("change",'.file_field',function(){
    var file = $(this).prop('files')[0];
    var fileReader = new FileReader();
    
    fileReader.onloadend = function(){
      $('.main__image-select').html(`<img class="output" src="${fileReader.result}">`);
  }
    fileReader.readAsDataURL(file);
})

$(".works_input_area").on("change",'.works_file_field',function(){
  var file = $(this).prop('files')[0];
  var fileReader = new FileReader();
  
  fileReader.onloadend = function(){
    $('.works_output_area').append(`<div class="image-wrapper"><img data-index=${index} class="works_output" src="${fileReader.result}"><div class="image_remove" data-index=${index}>削除</div></div>`);
    append_input()
  }
  fileReader.readAsDataURL(file);
})

  var append_input= function(){
    index++
    $('.works_input_area').append(`<label data-index=${index} class="works_input" for="product_product_images_attributes_${index}_src">
    <input class="works_file_field" type="file" name="product[product_images_attributes][${index}][src]" id="product_product_images_attributes_${index}_src">
   </label>`)
  }

  $(".form__container").on("click",".image_remove",function(){
    var remove_index = $(this).attr("data-index")
    console.log(remove_index)
    $(this).parent().remove()
    $(`.works_input[data-index = ${remove_index}]`).remove()
    $(`.image_destroy[for = product_product_images_attributes_${remove_index}__destroy]`).click()
  })

    var $form_textarea = $('.form_text');
    var form_lineHeight = parseInt($form_textarea.css('lineHeight'));
    $form_textarea.on('input', function(evt) {
      var lines = ($(this).val() + '\n').match(/\n/g).length+1;
      $(this).height(form_lineHeight * lines); 

    });

})