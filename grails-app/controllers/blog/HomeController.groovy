package blog

class HomeController {

    def index() {
        render (view: "/home/index")
    }

    def blogpost(){
        render (view: "/blogpost/index")
    }

    def aboutus(){
        render (view: "/aboutus/index")
    }

    def contactus(){
        render (view: "/contactus/index")
    }
}
