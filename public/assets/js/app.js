function myFunction(x) {
    x.classList.toggle("change");
}

const burgerElt = document.getElementById("burger");
const topbarMenuElt = document.getElementById("topbar-menu");

burgerElt.addEventListener("click", function(e){
    topbarMenuElt.classList.toggle("no-show");
})