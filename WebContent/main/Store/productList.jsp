<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HobbyFactory : product-list</title>

    <style media="screen">
      body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}
   
      img{width:500px; height:300px;}
      /* 상단 카테고리 리스트 */
      .category-wrap{width:1280px; margin:0 auto; }
      .category-wrap p{margin:0px;}
        .category-list{text-align:center;}
        .category-list ul li{display:inline; margin:0 15px; font-size:13px; padding-bottom:3px;}
        .category-list ul li:hover{border-bottom:1px solid #ff3399;}
        .category-list a{font-weight:900;}
        .category-list a:hover{color:#ff3399;}

      /* 하단 클래스 리스트 */
      .class-wrap{width:1280px; margin:0 auto; text-align:center;}
      .class-wrap p{margin:0px;}
        .class-box{margin:20px 15px 0px 15px;  display:inline-block; position:relative;}
          .class-image{position:relative;}
          .class-info{position:relative; margin-top:8px;}
              .host-name{float:left; font-size:12px; color:gray;}
              .class-name{float:left; font-size:20px; font-weight:900;}
            .price-wrap1{position:absolute; right:0px; top:8px;}
              .price{font-size:20px; font-weight:900;}



    </style>

    <script type="text/javascript">
    </script>
  </head>
  <body>
    <!-- 카테고리 리스트 -->
    <div class="category-wrap">
      <div class="category-list">
        <ul>
          <li><a href="#">전체</a></li>
          <li><a href="#">마크라메</a></li>
          <li><a href="#">프랑스자수</a></li>
          <li><a href="#">수채화/드로잉</a></li>
          <li><a href="#">뜨개질/위빙</a></li>
          <li><a href="#">가죽공예</a></li>
          <li><a href="#">쥬얼리/네온사인</a></li>
          <li><a href="#">다양한 취미</a></li>
        </ul>
      <!-- category-list -->
      </div>
    <!-- category-wrap -->
    </div>


    <!-- 클래스 리스트 -->
    <div class="class-wrap">


      <!-- class-box복붙 -->
      <div class="class-box">
        <a href="?page=productDetail">
        <div class="class-image"><img src="../image/pdt1.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[노플랜 프로젝트]</span><br><span class="class-name">라탄으로 이불 톡톡</span></div>
          <div class="price-wrap1"><span class="price">28,000</span>원</div>
        <!-- class-info -->
        </div>
        </a>
      <!-- class-box -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt2.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[림자수 공방]</span><br><span class="class-name">장미정원 자수 끈파우치</span></div>
          <div class="price-wrap1"><span class="price">30,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt3.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[솜씨]</span><br><span class="class-name">플랜트행어</span></div>
          <div class="price-wrap1"><span class="price">13,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt4.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[하비풀]</span><br><span class="class-name">프랑스자수</span></div>
          <div class="price-wrap1"><span class="price">13,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt5.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[하비풀]</span><br><span class="class-name">내맘대로 눈 내리는 스노우볼</span></div>
          <div class="price-wrap1"><span class="price">27,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt6.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[솜씨]</span><br><span class="class-name">나의 첫 별자리 자수</span></div>
          <div class="price-wrap1"><span class="price">15,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt7.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[코코유리소]</span><br><span class="class-name">유리조각 캔들홀더</span></div>
          <div class="price-wrap1"><span class="price">18,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt8.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[림자수공방]</span><br><span class="class-name">낭만가득 자수 프레임 파우치</span></div>
          <div class="price-wrap1"><span class="price">33,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt9.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[솜씨]</span><br><span class="class-name">나의 첫 스누피 카드케이스 뜨개질</span></div>
          <div class="price-wrap1"><span class="price">17,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt10.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[하비풀]</span><br><span class="class-name">하비풀 마크라매 행어</span></div>
          <div class="price-wrap1"><span class="price">12,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt11.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[슬로우모먼츠]</span><br><span class="class-name">버블클러치 뜨개질</span></div>
          <div class="price-wrap1"><span class="price">23,000</span>원</div>
        </div>
        </a>
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/pdt12.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[솜씨]</span><br><span class="class-name">포근포근 스웨터 프랑스자수</span></div>
          <div class="price-wrap1"><span class="price">24,000</span>원</div>
        </div>
        </a>
      </div>


    <!-- class-wrap -->
    </div>
  </body>
</html>
