<!DOCTYPE html>
<html lang='en'>

<head>
  <meta charset='utf-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <meta name='description' content='Init: A quick way to go to the first commit of a repo'>
  <meta name='author' content='Farhad Ghayour'>
  <meta property='og:title' content='Init: A quick way to go to the first commit of a repo' />
  <meta property='og:url' content='http://farhadg.github.io/init/' />
  <title>Init: A quick way to go to the first commit of a repo</title>
  <link rel="icon" type="ico" href="I.ico" />
  <style>
    body {
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      font-style: normal;
      font-variant: normal;
      font-weight: 500;
      font-size: 16px;
      line-height: 1.6em;
      background-color: #585858;
      color: white;
      zoom: 125%;
    }
    
    .body-change {
      background-color: rgba(0, 0, 0, .9);
      color: white ;
    }
    
    p {
      margin: 20px 0;
      font-size: 20px;
    }
    
    .container {
      width: 500px;
      margin: auto;
      margin-top: 80px;
      text-align: center;
    }
    
    .github{
      font-size: 20px;
    }
    
    a {
      text-decoration: none;
      color: #00B4FF;
    }
    
    a:visited{
      text-decoration: none;
      color: #00B4F1;
    }
    
    #arrow svg {
      height: auto;
      width: 100px;
      fill: white;
      -webkit-animation-name: upAndDown;
      -webkit-animation-duration: 1s;
      -webkit-animation-timing-function: linear;
      -webkit-animation-iteration-count: 10000;
    }
    
    .bring-out {
      position: relative;
      top: -125px;
    }
    
    #init {
      background: #7bc673;
      color: white;
      border-radius: 3px;
      padding: 20px 20px;
      font-size: 24px;
      margin: auto;
      width: 100px;
      display: block;
      text-align: center;
      transition: background 0.2s;
      -webkit-box-shadow: 5px 2px 4px 0px rgba(33, 33, 33, 0.53);
      -moz-box-shadow: 5px 2px 4px 0px rgba(33, 33, 33, 0.53);
      box-shadow: 5px 2px 4px 0px rgba(33, 33, 33, 0.53);
    }
    
    #init:hover {
      background: #ff4111;
      position: relative;
      -webkit-box-shadow: 11px 11px 23px 0px rgba(33, 33, 33, 0.53);
      -moz-box-shadow: 11px 11px 23px 0px rgba(33, 33, 33, 0.53);
      box-shadow: 11px 11px 23px 0px rgba(33, 33, 33, 0.53);
    }
    
    #init:active {
      background: #ff1111;
      top: 1px;
      -webkit-box-shadow: 8px 11px 23px 0px rgba(33, 33, 33, 0.53);
      -moz-box-shadow: 8px 11px 23px 0px rgba(33, 33, 33, 0.53);
      box-shadow: 8px 11px 23px 0px rgba(33, 33, 33, 0.53);
    }
    
    .we-take {
      font-size: 20px;
    }
    
    #back {
      -webkit-animation-name: back;
      -webkit-animation-duration: 1.5s;
      -webkit-animation-timing-function: ease-in;
      -webkit-animation-iteration-count: 1;
    }
    
    #click-drag {
      -webkit-animation-name: clickDrag;
      -webkit-animation-duration: 2s;
      -webkit-animation-timing-function: linear;
      -webkit-animation-iteration-count: 1;
    }
    
    .hide {
      opacity: 0;
    }
    
    #display-none{
      display:none;
    }
    
    .show {
      opacity: 1;
    }
    
    @keyframes back {
      0% {
        -webkit-transform: translateX(500px) rotate(540deg);
        transform: translateX(500px) rotate(540deg);
      }
      100% {
        -webkit-transform: translateX(0px) rotate(0deg);
        transform: translateX(0px) rotate(0deg);
      }
    }
    
    @keyframes upAndDown {
      0% {
        -webkit-transform: translateY(125px);
        transform: translateY(125px);
        fill: rgba(0, 0, 0, .9);
      }
      50% {
        fill: white;
      }
      100% {
        -webkit-transform: translateY(0px);
        transform: translateY(0px);
        fill: rgba(0, 0, 0, .9);
      }
    }
    
    @keyframes clickDrag {
      0% {
        -webkit-transform: translateX(2.5px);
        transform: translateX(2.5px);
      }
      10% {
        opacity: .25;
      }
      25% {
        -webkit-transform: translateX(0px);
        transform: translateX(0px);
      }
      50% {
        -webkit-transform: translateX(5px);
        transform: translateX(5px);
      }
      75% {
        -webkit-transform: translateX(0px);
        transform: translateX(0px);
        opacity: 1;
      }
      90% {
        -webkit-transform: translateX(-2.5px);
        transform: translateX(-2.5px);
      }
      100% {
        -webkit-transform: translateX(0px);
        transform: translateX(0px);
      }
    }
    
  </style>
</head>

<body>

  <div class="container">
    <p id="info">Drag this bookmarklet (link) to your bookmark bar and then click it, while visiting any GitHub repo.</p>

    <div class="bring-out">
      <div id="arrow" class="hide">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
        width="512px" height="512px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
          <polygon points="256.5,64.5 64.5,256.5 176.5,256.5 176.5,448.5 336.5,448.5 336.5,256.5 448.5,256.5 " />
        </svg>
      </div>
      <br>

      <a id="init" target="_blank" href="javascript:{{bookmarkletCode}}">INIT</a>

      <p class="hover-instructions" id="display-none">
        <span id="click-drag">Click  and  Drag</span> this bookmarklet to your bookmark bar
      </p>

      <p class="we-take" id="info">Init, we take you
        <span id="back">back.</span>
      </p>

      <a class="github" href="https://github.com/farhadg/init" target="_blank">Star the GitHub Repo :)</a>
    </div>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script>
    $(function() {
      
      var $body = $("body"),
          $info = $("#info"),
          $arrow = $("#arrow"),
          $hoverInstructions = $(".hover-instructions"),
          $weTake = $(".we-take");
      
      function handleMouseOver() {
        $body.toggleClass("body-change");
        $info.toggleClass("hide");
        $arrow.toggleClass("show");
        $hoverInstructions.fadeIn();
        $weTake.hide();
      }
      
      function handleMouseOut() {
        $body.toggleClass("body-change");
        $arrow.toggleClass("show");
        $info.toggleClass("hide");
        $hoverInstructions.hide();
        $weTake.fadeIn();
      }
          
      $("#init")
        .mouseover(handleMouseOver)
        .mouseout(handleMouseOut);
        
    });
  </script>

  <!-- Repo Card -->
  <script src="https://rawgit.com/FarhadG/repo-card/master/repo-card.min.js#a"></script>

  <script>
    RepoCard.configure({
      repo: 'init',
      username: 'farhadg',
      title: 'Init',
      subtitle: '@farhadg',
      thumb: 'url(https://avatars0.githubusercontent.com/u/1647596?v=3&s=460)',
      background: 'url(http://subtlepatterns2015.subtlepatterns.netdna-cdn.com/patterns/dark_embroidery.png)',
      info: 'Being able to quickly navigate to the oldest commit in a repo is quite helpful. Go ahead and drag the bookmarklet onto your bookmark bar and click it whenever you would like',
      position: {
        bottom: 25,
        right: 25
      }
    });
  </script>

</body>

</html>