var margins=['0px','-800px', '-1600px', '-2400px']
var idx=0;
document.querySelectorAll('#slider i')[0].addEventListener('click', ()=>{
    idx=(idx+3)%4;
    document.querySelector('#slider ul li').style.marginLeft=margins[idx];
    console.log(idx);
});

document.querySelectorAll('#slider i')[1].addEventListener('click', ()=>{
    idx=(idx+1)%4;
    document.querySelector('#slider ul li').style.marginLeft=margins[idx];
    console.log(idx);
});