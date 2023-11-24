
var anhAr = [];
var Index = 0;

for (var i = 0; i < 3; i++) {
    anhAr[i] = new Image();
    anhAr[i].src = "../assets/img/banner" + i + ".webp";
}

function next() {
    Index++;
    if (Index >= anhAr.length) {
        Index = 0;
    }
    document.getElementById("anh").src = anhAr[Index].src;
}
function back() {
    Index--;
    if (Index < 0) {
        Index = anhAr.length - 1;

    }
    document.getElementById("anh").src = anhAr[Index].src;
}
setInterval(function () {
    next();

}, 3000);

