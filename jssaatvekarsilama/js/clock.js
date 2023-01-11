let username = prompt("Lütfen adınızı yazın.", "");
document.getElementById("myName").textContent = username;

function showTime() {
  const days = [
    "Pazar",
    "Pazartesi",
    "Salı",
    "Çarşamba",
    "Perşembe",
    "Cuma",
    "Cumartesi",
  ];
  const today = new Date();
  let h = today.getHours();
  let m = today.getMinutes();
  let s = today.getSeconds();
  let d = days[today.getDay()];
  h = checkTime(h);
  m = checkTime(m);
  s = checkTime(s);

  document.getElementById("myClock").textContent = `${h}:${m}:${s} ${d}`;
  setTimeout(showTime, 1000);
}

function checkTime(i) {
  if (i === 0) {
    i = "00";
  } else if (i < 10) {
    i = "0" + i;
  }
  return i;
}

showTime();
