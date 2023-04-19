<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .container{
        height: 870px;
        width: 550px;
    }
    .nickname{
      padding-left: 45px;
    }
    .information{
      margin-top: 10px;
      font-size: 20px;
    }
    .information div button{
      margin-top: 70px;
    }
    .UserDelete{
      margin-top: 100px;
    }

  </style>
</head>
<body>
  <div class="container p-5 my-5 border">
    <div class="row"></div>
      <div class="col-sm-4">
        <img src="cat.jpg" class="rounded-circle" alt="Cinque Terre" width="140" height="140">
        <div class="nickname">닉네임</div>
      </div>
      <div class="information">
        <div class="col-sm-4">
          <button type="button" class="btn btn-link">회원정보</button>
          <button type="button" class="btn btn-link">소모임 삭제</button>
          <button type="button" class="btn btn-link">리뷰 삭제</button>
          <button type="button" class="btn btn-link">댓글 삭제</button>
        </div>

      </div>
      <div class="UserDelete">
        <button type="button" class="btn btn-primary">회원탈퇴</button>
      </div>
</div>
</div>

</body>
</html>
