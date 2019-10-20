$(function(){
  index=0
  $(".image_form").on("change",'.file_field',function(){
    var file = $(this).prop('files')[0];
    var fileReader = new FileReader();
    
    fileReader.onloadend = function(){
      $('.main__image-select').html(`<img class="output" src="${fileReader.result}">`);
  }
    fileReader.readAsDataURL(file);
})


$(".works__image").on("change",'.works_file_field',function(){
  var file = $(this).prop('files')[0];
  var fileReader = new FileReader();
  
  fileReader.onloadend = function(){
    console.log(file)
    $('.works_output_area').append(`<div class="image-wrapper"><img data-index=${index} class="works_output" src="${fileReader.result}"><div class="image_remove" data-index=${index}>削除</div></div>`);
    append_input()
  }
  fileReader.readAsDataURL(file);
})

  var append_input= function(){
    index++
    $('.works_input_area').append(`<label data-index=${index} class="works_input" for="product_works_attributes_${index}_image">
    <input class="works_file_field" type="file" name="product[works_attributes][${index}][image]" id="product_works_attributes_${index}_image">
   </label>`)
  }

  $(".works_output_area").on("click",".image_remove",function(){
    var remove_index = $(this).attr("data-index")
    $(this).parent().remove()
    $(`.works_input[data-index = ${remove_index}]`).remove()

  })


})