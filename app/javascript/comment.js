// function comment() {
//   const submit = document.getElementById("submit");
//   submit.addEventListener("click", (e) => {
//     const formData = new FormData(document.getElementById("form"));
//     const XHR = new XMLHttpRequest();
//     XHR.open("POST", "/items/item.id/comments", true);
//     XHR.responseType = "json";
//     XHR.send(formData);
//     XHR.onload = () => {
//       if (XHR.status != 200) {
//         alert(`Error ${XHR.status}: ${XHR.statusText}`);
//         return null;
//       }
//       const item = XHR.response.comment;
//       const list = document.getElementById("list");
//       const formText = document.getElementById("text");
//       const HTML = `
//       <ul class="comment_group">
//         <li class="comment">
//         ${item.user.nickname}：${item.text}
//         </li>
//      </ul>`;
//       list.insertAdjacentHTML("afterend", HTML);
//       formText.value = "";
//     };
//   });
// }
// window.addEventListener("load", comment);