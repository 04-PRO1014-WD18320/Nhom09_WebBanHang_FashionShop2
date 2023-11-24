
var anhAr = [];
var Index = 0;

for (var i = 1; i < 5; i++) {
    anhAr[i] = new Image();
    anhAr[i].src = "img/slideshow" + i + ".webp";
}

function next() {
    Index++;
    if (Index >= anhAr.length) {
        Index = 0;
    }
    document.getElementById("slide").src = anhAr[Index].src;
}
function back() {
    Index--;
    if (Index <= 0) {
        Index = anhAr.length - 1;

    }
    document.getElementById("slide").src = anhAr[Index].src;
}
setInterval(function () {
    next();

}, 2000);

//    var slide = document.getElementById("slide") ;
//    slide.onclick = function() {
//     alert("Slide clicked");
//    }

