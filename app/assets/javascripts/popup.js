var winRef

function popupOpen(s){
    if(winRef == null){
        winRef = window.open('/category/songwriting_view/'+s, 'popupName', 'width=800,height=400, resizable=no, scrollbars=no, status=no, toolbar = no, directories = no, location=no');
    }else{
        if (winRef.closed == false) {
            winRef = window.open('/category/songwriting_view/'+s, 'popupName', 'width=800,height=400,resizable=no, scrollbars=no, status=no, toolbar = no, directories = no, location=no');        }else{
        }
    }
}
    
// $(document).ready(function() { 

//      var vid = $("popupOpen").get(0);//변수 vid에 video 태그 저장 
//     //.get() : 해당순서에 맞는 동영상을 참조

//       $("popupOpen").on("mouseenter",function(){ 
//       vid.play(); 
//       }); //동영상에 마우스 올리면 .play() 재생!

//      $("popupOpen").on("mouseleave",function(){ 
//       vid.pause(); 
//      });  //동영상에 마우스 내리면 .pause() 정지!

// });


// function popupOpen(){
// 	var pop_status;

// 	var popUrl = "/category/songwriting_view";

// 	var popOption = "width=1000, height=360, resizable=no, scrollbars=no, status=no, toolbar = no, directories = no, location=no";    

// 	pop_status = window.open(popUrl,"",popOption);
	
// 	pop_status.focus();

// 	}
