# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'page:change', ->  #cuando cargue de pagina cargue todo lo que hay en el documento
    
    traer_cantidad_valor = (id) -> #nos trae la cantidad y valor del producto ,,con el id se sabe cual
        $.ajax   #llamada a ajax
            url: "/sells/traer_producto"   #traer_producto  seria el metod en el controlador
            dataType: 'json'           #tipo de dato es un json   
            type: 'post'               #atravez del metodo post
            data: product_id: id      #creamos una vble que va hacer igual al id (parametro que se recibe id de productos)
            success: (data) -> #si tiene exito lo que me traiga se guarda en data
                $('#cantidad').text(data.cantidad)    #lo que esta entre las etiquetas con #cantidad levamos atraer cantidad del producto
                $('#valor').text(data.precio)
            
    $('#sell_product_id').change ->              #cuando cambie de opcion en el select se ejecuta este evento
        if @value          #this value es el valor que esta seleccionado en el select 
            traer_cantidad_valor(@value)
        else
            $('.clean').text(0) #si el valor esta nill la clase .clean quedara en 0