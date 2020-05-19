/*
 * 
 */
const lazyLoad = {
    inserted: el => {
        function loadImage() {
            const isImg = el.nodeName === "IMG";
            // 이미지 태그일 경우만 url 입력 로딩
            if (isImg) {
                el.src = el.dataset.url;
                el.classList.add('bounce');
                console.log("image load");
            }
        }

         function createObserver() {

            const observer = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) { // 감지대상이 교차영역에 진입 할 경우
                        loadImage(); // 교차영역 들어올경우 이미지 로딩
                        observer.unobserve(el); // 이미지 로딩 이후론 관찰할 필요 x
                    }
                });
            },{
            	root:null,
            	rootMargin:'0px',
            	threshold:0
            });

            observer.observe(el);
            console.log("image observe");
        }
        createObserver();
    }
}

Vue.directive("lazyload", lazyLoad);

let projectComponent = Vue.extend({
    template:`<div class="col-xs-12 col-md-4 item">
                <div class="thumbnail">
                    <img v-lazyload v-bind:data-url="imgSrc" alt="random image">
                    <div class="caption">
                        <p class="item__title">{{title}}</p>
                        <span class="item__category">{{category}} | MOD</span><span class="item__money">모금율 : {{percent}}</span>
                    </div>
                </div>
              </div>`,
    methods:{

    },
    data:function(){
        return {

        }
    },
    props:['imgSrc', 'title', 'category', 'percent', 'bgurl'],
});


