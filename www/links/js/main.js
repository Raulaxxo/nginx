let backgrounds = [];

backgrounds = [0] = '../images/wallpaper/wallpaper0.jpg';
backgrounds = [1] = '../images/wallpaper/wallpaper1.jpg';
backgrounds = [2] = '../images/wallpaper/wallpaper2.jpg';
backgrounds = [3] = '../images/wallpaper/wallpaper3.jpg';
  
function changeBackground() {
    const randomIndex = Math.floor(Math.random() * backgrounds.length);
    const randomBackground = backgrounds[randomIndex];
    document.body.style.backgroundImage = `url(${randomBackground})`;
  }
  
  window.addEventListener('load', changeBackground);
  
  window.addEventListener('beforeunload', function() {
    window.localStorage.setItem('background', document.body.style.backgroundImage);
  });
  
  window.addEventListener('load', function() {
    const background = window.localStorage.getItem('background');
    if (background) {
      document.body.style.backgroundImage = background;
    }
  });