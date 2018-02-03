package blog

class BlogController {

    def index(){
        render view: "index"
    }

    def list() {
        List<Blog> blogList = Blog.list()
        render view: "blog", model: [Blogs: blogList]
    }

    def create() {
        render view: "create"
    }

    def save(Blog blog){
        blog.dateCreated = new Date()
        if (blog.validate()) {
            blog.save(flush: true, failOrError: true)
            flash.message = "Your response has been successfully recorded. Thank you for your feedback."
            redirect action: "index"
        }
        else {
            flash.message = "Oops! Something went wrong. Cannot record your response."
            redirect action: "create"
        }
    }
}
