function Video(title,uploader,time){

   this.title=title;
   this.uploader=uploader;
   this.time= time;
console.log(`you watched all ${this.time}seconds of ${this.title}!`);
}
let watch =new Video("otters holding hands","aggy",60)
 let NewVideo=new watch();
 NewVideo();
