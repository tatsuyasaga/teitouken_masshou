function selectBranchDestination(){
  const destination = document.getElementById("destination");
  destination.onchange = autoSelectBranchDestination;
  const branchDestination = document.getElementById("branch-destination");

  function autoSelectBranchDestination(){
    const selectedDestination = destination.value;
    const allBranchDestination = branchDestination.options;
    const arrayBranchDestination = Array.prototype.slice.call(allBranchDestination);

    switch(selectedDestination){
      case("2"):
        const exceptSapporo = arrayBranchDestination.slice(16);
        exceptSapporo.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("3"):
        const exceptHakodate = arrayBranchDestination.slice(0, 16).concat(arrayBranchDestination.slice(19));
        exceptHakodate.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("4"):
        const exceptAsahikawa = arrayBranchDestination.slice(0, 19).concat(arrayBranchDestination.slice(24));
        exceptAsahikawa.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("5"):
        const exceptKushiro = arrayBranchDestination.slice(0, 24).concat(arrayBranchDestination.slice(29));
        exceptKushiro.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("6"):
        const exceptSendai = arrayBranchDestination.slice(0, 29).concat(arrayBranchDestination.slice(37));
        exceptSendai.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("7"):
        const exceptFukushima = arrayBranchDestination.slice(0, 37).concat(arrayBranchDestination.slice(46));
        exceptFukushima.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("8"):
        const exceptYamagata = arrayBranchDestination.slice(0, 46).concat(arrayBranchDestination.slice(53));
        exceptYamagata.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("9"):
        const exceptMorioka = arrayBranchDestination.slice(0, 53).concat(arrayBranchDestination.slice(59));
        exceptMorioka.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("10"):
        const exceptAkita = arrayBranchDestination.slice(0, 59).concat(arrayBranchDestination.slice(64));
        exceptAkita.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("11"):
        const exceptAomori = arrayBranchDestination.slice(0, 64).concat(arrayBranchDestination.slice(70));
        exceptAomori.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("12"):
        const exceptTokyo = arrayBranchDestination.slice(0, 70).concat(arrayBranchDestination.slice(93));
        exceptTokyo.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("13"):
        const exceptYokohama = arrayBranchDestination.slice(0, 93).concat(arrayBranchDestination.slice(109));
        exceptYokohama.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("14"):
        const exceptSaitama = arrayBranchDestination.slice(0, 109).concat(arrayBranchDestination.slice(126));
        exceptSaitama.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("15"):
        const exceptChiba = arrayBranchDestination.slice(0, 126).concat(arrayBranchDestination.slice(141));
        exceptChiba.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("16"):
        const exceptMito = arrayBranchDestination.slice(0, 141).concat(arrayBranchDestination.slice(151));
        exceptMito.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("17"):
        const exceptUtsunomiya = arrayBranchDestination.slice(0, 151).concat(arrayBranchDestination.slice(158));
        exceptUtsunomiya.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("18"):
        const exceptMaebashi = arrayBranchDestination.slice(0, 158).concat(arrayBranchDestination.slice(167));
        exceptMaebashi.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("19"):
        const exceptShizuoka = arrayBranchDestination.slice(0, 167).concat(arrayBranchDestination.slice(178));
        exceptShizuoka.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("20"):
        const exceptKoufu = arrayBranchDestination.slice(0, 178).concat(arrayBranchDestination.slice(183));
        exceptKoufu.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("21"):
        const exceptNagano = arrayBranchDestination.slice(0, 183).concat(arrayBranchDestination.slice(193));
        exceptNagano.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("22"):
        const exceptNiigata = arrayBranchDestination.slice(0, 193).concat(arrayBranchDestination.slice(205));
        exceptNiigata.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("23"):
        const exceptNagoya = arrayBranchDestination.slice(0, 205).concat(arrayBranchDestination.slice(219));
        exceptNagoya.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("24"):
        const exceptTsu = arrayBranchDestination.slice(0, 219).concat(arrayBranchDestination.slice(228));
        exceptTsu.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("25"):
        const exceptGifu = arrayBranchDestination.slice(0, 228).concat(arrayBranchDestination.slice(235));
        exceptGifu.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("26"):
        const exceptFukui = arrayBranchDestination.slice(0, 235).concat(arrayBranchDestination.slice(239));
        exceptFukui.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("27"):
        const exceptKanazawa = arrayBranchDestination.slice(0, 239).concat(arrayBranchDestination.slice(243));
        exceptKanazawa.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("28"):
        const exceptToyama = arrayBranchDestination.slice(0, 243).concat(arrayBranchDestination.slice(247));
        exceptToyama.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("29"):
        const exceptOsaka = arrayBranchDestination.slice(0, 247).concat(arrayBranchDestination.slice(258));
        exceptOsaka.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("30"):
        const exceptKyoto = arrayBranchDestination.slice(0, 258).concat(arrayBranchDestination.slice(268));
        exceptKyoto.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("31"):
        const exceptKobe = arrayBranchDestination.slice(0, 268).concat(arrayBranchDestination.slice(285));
        exceptKobe.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("32"):
        const exceptNara = arrayBranchDestination.slice(0, 285).concat(arrayBranchDestination.slice(290));
        exceptNara.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("33"):
        const exceptOtu = arrayBranchDestination.slice(0, 290).concat(arrayBranchDestination.slice(296));
        exceptOtu.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("34"):
        const exceptWakayama = arrayBranchDestination.slice(0, 296).concat(arrayBranchDestination.slice(301));
        exceptWakayama.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("35"):
        const exceptHiroshima = arrayBranchDestination.slice(0, 301).concat(arrayBranchDestination.slice(309));
        exceptHiroshima.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("36"):
        const exceptYamaguchi = arrayBranchDestination.slice(0, 309).concat(arrayBranchDestination.slice(316));
        exceptYamaguchi.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("37"):
        const exceptOkayama = arrayBranchDestination.slice(0, 316).concat(arrayBranchDestination.slice(323));
        exceptOkayama.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("38"):
        const exceptTottori = arrayBranchDestination.slice(0, 323).concat(arrayBranchDestination.slice(326));
        exceptTottori.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("39"):
        const exceptMatsue = arrayBranchDestination.slice(0, 326).concat(arrayBranchDestination.slice(331));
        exceptMatsue.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("40"):
        const exceptTakamatsu = arrayBranchDestination.slice(0, 331).concat(arrayBranchDestination.slice(335));
        exceptTakamatsu.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("41"):
        const exceptTokushima = arrayBranchDestination.slice(0, 335).concat(arrayBranchDestination.slice(338));
        exceptTokushima.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("42"):
        const exceptKouchi = arrayBranchDestination.slice(0, 338).concat(arrayBranchDestination.slice(343));
        exceptKouchi.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("43"):
        const exceptMatsuyama = arrayBranchDestination.slice(0, 343).concat(arrayBranchDestination.slice(350));
        exceptMatsuyama.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("44"):
        const exceptFukuoka = arrayBranchDestination.slice(0, 350).concat(arrayBranchDestination.slice(365));
        exceptFukuoka.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("44"):
        const exceptSaga = arrayBranchDestination.slice(0, 365).concat(arrayBranchDestination.slice(370));
        exceptSaga.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("45"):
        const exceptNagasaki = arrayBranchDestination.slice(0, 370).concat(arrayBranchDestination.slice(378));
        exceptNagasaki.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("46"):
        const exceptOita = arrayBranchDestination.slice(0, 378).concat(arrayBranchDestination.slice(385));
        exceptOita.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("47"):
        const exceptKumamoto = arrayBranchDestination.slice(0, 385).concat(arrayBranchDestination.slice(393));
        exceptKumamoto.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("48"):
        const exceptKagoshima = arrayBranchDestination.slice(0, 393).concat(arrayBranchDestination.slice(404));
        exceptKagoshima.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("49"):
        const exceptMiyazaki = arrayBranchDestination.slice(0, 404).concat(arrayBranchDestination.slice(410));
        exceptMiyazaki.forEach(function(id){
          id.style.display = "none";
        });
        break;
      case("50"):
        const exceptOkinawa = arrayBranchDestination.slice(0, 410).concat(arrayBranchDestination.slice(416));
        exceptOkinawa.forEach(function(id){
          id.style.display = "none";
        });
        break;
    };
  };
};





addEventListener("load", selectBranchDestination)