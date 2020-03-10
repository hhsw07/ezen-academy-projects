<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HobbyFactory : class-list</title>

    <style media="screen">
      body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}
     
      img{width:500px; height:300px;}

      /* 상단 상품 카테고리 리스트 */
      .category-wrap{width:1280px; margin:0 auto; }
      .category-wrap p{margin:0px;}
        .category-list{text-align:center;}
        .category-list ul li{display:inline; margin:0 15px; font-size:13px; padding-bottom:3px;}
        .category-list ul li:hover{border-bottom:1px solid #ff3399;}
        .category-list a{font-weight:900;}
        .category-list a:hover{color:#ff3399;}

      /* 하단 상품 리스트 */
      .class-wrap{width:1280px; margin:0 auto; text-align:center;}
        .class-box{margin:20px 15px 0px 15px;  display:inline-block; position:relative;}
          .class-image{position:relative;}
          .class-info{position:relative; margin-top:8px;}
              .host-name{float:left; font-size:12px; color:gray;}
              .class-name{float:left; font-size:20px; font-weight:900;}
            .price-wrap1{position:absolute; right:0px; top:2px;}
            .price-wrap2{position:absolute; right:0px; top:23px;}
              .day{font-size:12px;}
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
          <li><a href="?page=classList1">전체</a></li>
          <li><a href="?page=classList2">마크라메</a></li>
          <li><a href="?page=classList3">프랑스자수</a></li>
          <li><a href="#">수채화/드로잉</a></li>
          <li><a href="#">뜨개질/위빙</a></li>
          <li><a href="#">가죽공예</a></li>
          <li><a href="#">쥬얼리/네온사인</a></li>
          <li><a href="#">다양한 취미</a></li>
        </ul>
      <!-- category-list  -->
      </div>
    <!-- category-wrap -->
    </div>

    <!-- 클래스 리스트 -->
    <div class="class-wrap">


      <div class="class-box">
        <a href="?page=classDetail">
        <div class="class-image"><img src="../image/fra1.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[베란다자수]</span><br><span class="class-name">따뜻한 한마디 일러스트 글자수</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">20,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">200,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac1.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[슈에뜨마망]</span><br><span class="class-name">비온뒤맑음 마크라메 월행잉</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra2.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[제니스리]</span><br><span class="class-name">꽃 소풍 프랑스자수</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">20,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">200,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac2.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[드로우앤드]</span><br><span class="class-name">감성 리빙 마크라메</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">18,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">180,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra3.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[실버스노우]</span><br><span class="class-name">풀꽃 양말 프랑스자수</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">15,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">150,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac3.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[이현주]</span><br><span class="class-name">초록잎 선캐쳐 마크라메</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">17,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">170,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra4.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[아뜰리에올라]</span><br><span class="class-name">커피&프레즐 키링 프랑스자수</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">15,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">150,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac4.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[탁릴리티 스튜디오]</span><br><span class="class-name">수납 포켓 월행잉 마크라메</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra5.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[메리데이]</span><br><span class="class-name">프랑스자수 밤의 숲 수놓기</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">19,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">190,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac5.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[하비풀]</span><br><span class="class-name">목화 리스 마크라메</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">18,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">180,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra6.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[아뜰리에올라]</span><br><span class="class-name">프랑스자수 수제버거 파우치</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">15,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">150,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac6.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[이현주]</span><br><span class="class-name">마크라메 네트백 만들기</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra7.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[메리데이]</span><br><span class="class-name">프랑스자수 꽃 향수 액자</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">15,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">150,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra8.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[메리데이]</span><br><span class="class-name">프랑스자수 식물 인테리어 액자</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">15,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">150,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra9.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[후아유]</span><br><span class="class-name">프랑스자수 마리몬드 목련 파우치</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">15,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">150,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac7.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[노티드레이스]</span><br><span class="class-name">노티드레이스의 홈스타일링 마크라메</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac8.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[탈릭리티 스튜디오]</span><br><span class="class-name">마크라메 라그라스 월행잉 만들기</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac9.jpg" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[이현주]</span><br><span class="class-name">마크라메 네트백 만들기</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>


    <!-- class-wrap -->
    </div>
  </body>
</html>
