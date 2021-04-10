function alert(){
  const printButton = document.getElementById("print-button");
  printButton.addEventListener("click", function(){
    const confirm = window.confirm("申請書を確認されましたか？n問題なければA4サイズで印刷してください。");
    if(confirm){
      print();
    };
  });
};





addEventListener("load", alert)