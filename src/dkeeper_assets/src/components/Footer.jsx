import React from "react";

function Footer() {
  const year = new Date().getFullYear();
  return (
    <footer>
      <p><a href="https://www.freepik.com/free-vector/infinity-line-set_11053281.htm#query=infinity%20pattern&position=8&from_view=keyword&track=ais">Inifity Image by macrovector</a> on Freepik</p>
      <p>Copyright ⓒ {year}</p>
    </footer>
  );
}

export default Footer;
