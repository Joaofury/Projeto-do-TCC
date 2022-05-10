function show(anything){
                document.querySelector('.text').value = anything;
              }
               

              const dropdownf = document.querySelector(".dropdownf");
const option = document.querySelector(".option");
const textBox = document.querySelector(".textBox");
dropdownf.addEventListener("click", () => {
  dropdownf.classList.toggle("active");
});
option.addEventListener("click"), (e) =>
  console.log(e.target.dataset.value);
  if (e.target.dataset.identificador === "option") {
    textBox.value = e.target.innerHTML;
  }







  let teste = document.querySelector('.teste')

teste.onclick = () => {
    document.querySelector('body').classList.toggle('light')
    document.querySelector('body').classList.toggle('dark')
}