<!DOCTYPE html>

<html>

    <head>
    
    
        <title>Blogger</title>  
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/fontawesome.css"  />
    </head>

    <body>
        
        <section class="header">
            <h1>Blog name</h1>
            <h4>Create your ideas</h4>
           
        </section>
<!--    <div class="titlu" >
      <font face='Courier' size="50px" color='#C1C1C4 '> Blog </font><div class= "motto">  </div></div> -->
  <!-- <header class=" w3-center" style="padding:70px 16px">
  
</header> -->
<header class="w3-container w3-center" style="padding:100px 20px">

     
    <!--Formular adaugare postare -->

  <div id="third"><form method="POST" action="newsfeed.php"><table><caption><b><br><br>Create your ideas...</b></caption>
  <tr><td>Name of the post:</td><td><input type="text" name="name" ></td></tr>
<tr><td>Add a tag:</td><td> <input type="text" name="type" ></td></tr>
<tr><td>Write your thoughs:</td><td> <textarea id="w3review" name="w3review" rows="10" cols="30"></textarea></td></tr>
<tr><td colspan = "2"><input type="submit" value="Post"></td></tr>
</table></form>
<a href = "{{ url('/newsfeed') }}" class="btn read-more-btn">Back to newsfeed</a>
</div>

</header>
</body>



</html>
