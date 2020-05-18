/**
 * 
 */


var projectComponent = Vue.extend({
    template:`<div class="col-xs-12 col-md-3 item">
                <div class="thumbnail">
                    <img v-bind:src="imgSrc" alt="...">
                    <div class="caption">
                        <p class="item__title">{{imgSrc}}</p>
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
    props:['imgSrc', 'ptitle', 'category', 'percent'],
});