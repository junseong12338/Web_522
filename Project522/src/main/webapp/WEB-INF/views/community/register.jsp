<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
          selector: '#mytextarea'
        });
      </script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <h1>TinyMCE Quick Start Guide</h1>
        <form method="post" action="/community/register" method="post">
        	<label>Title</label> <input class="form-control" name='community_title'>
        	<label>address</label> <input class="form-control" name='community_place'>
        	<label>map</label> <input class="form-control" name='community_map'>
        	<label>category</label> <input class="form-control" name='community_category'>
        	<label>writter</label> <input class="form-control" name='user_id'>
          	<textarea id="mytextarea" name="community_context"></textarea>
          	<button type="submit" class="btn btn-default">Submit
          	<button type="reset" class="btn btn-default">Reset Button</button>
        </form>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous">
        </script>
    </div>
</body>
</html>