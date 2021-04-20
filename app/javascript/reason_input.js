function reasonInput(){
  const reasonInput = document.getElementById("reason-input");
  reasonInput.addEventListener("keyup", function(){
    const reasonInputValue = reasonInput.value;
    document.getElementById("reason-other-button").value = reasonInputValue;
 });
}

addEventListener("load", reasonInput);