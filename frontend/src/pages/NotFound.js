export const NotFound =() =>  {
  //This is  a simply not found page, when you
  // enter a non valid url.
  
  return  <div>
    <div className="pages">NOT FOUND </div>
    <div className="backgroundvideo">
      <video autoPlay="yes" muted preload="yes">
        <source src="./video.mp4" type="video/mp4" />
      </video>
    </div>
  </div>
}