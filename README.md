# JSON viws

This app shows how you could use JSON to render views.


designs controller
```ruby
 # GET /designs/new
 def new
   @design = Design.new
   render :json => {:form => render_to_string(:partial => 'form')}
 end

```



#designs index.html.erb


<%=content_for :javascripts do%>

```javascript
<script type="text/javascript">

 $(function(){

     $('#new-design').on("click", function(event) {
       event.preventDefault();
       var url = $(this).attr('href');
       $.ajax({
         url: url,
         beforeSend: function() {

         },
         complete: function() {

         },
         success: function(data) {
           $('#designform').html(data['form']);

         }
       });
     });


    $(document).on("click", "#cancel-btn", function(event) {
       $('form').remove();
       //alert("s");
    });

 })



</script>
```
