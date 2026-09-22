(() => {
  const files={
    'いぬ':'dog.wav','ねこ':'cat.wav','ぞう':'elephant.mp3','らいおん':'lion.wav',
    'さる':'monkey.wav','うし':'cow.wav','とり':'bird.wav'
  };
  const cache={};
  function play(name){
    const file=files[name]; if(!file) return;
    try{
      const a=cache[name] || (cache[name]=new Audio('./audio/'+file));
      a.pause(); a.currentTime=0; a.volume=1;
      const pr=a.play(); if(pr&&pr.catch) pr.catch(()=>{});
    }catch(e){}
  }
  addEventListener('DOMContentLoaded',()=>{
    document.querySelectorAll('.animal').forEach(b=>{
      b.addEventListener('pointerdown',()=>play(b.getAttribute('aria-label')), {passive:true});
    });
  });
})();