var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

//   <iframe> function 생성
//    api code down.
var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('youtube', {
    height: '100%',
    width: '100%',
    playerVars: {
              autoplay: 1,
              loop: 1,
              controls: 0,
              showinfo: 0,
              autohide: 1,
              modestbranding: 1,
              mute:1,
              vq: 'hd1080'},
    videoId: 'PLMpM3Z0118S5OUYicsrjSUjouOgKt-Bdt',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}


function onPlayerReady(event) {
  event.target.playVideo();
  player.mute();
}

var done = false;
function onPlayerStateChange(event) {
  
}
function stopVideo() {
  player.stopVideo();
}