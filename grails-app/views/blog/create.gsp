<!doctype html>
<html>
<head>
    <!--link to 'main' layout-->
    <meta name="layout" content="_page"/>
    <title>Create Your Blog</title>
</head>

<body>

<!--contact page content-->
<div class="container">
    <div class="row" style="margin-bottom: 80px">
        <div class="col-md-12">
            <h1>Create Your Own Blog Now</h1>

            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>

            <g:form controller="blog" action="save" name="Contact">
                <div class="form-group">
                    <label for="">Blog Title</label>
                    <input type="text" class="form-control" placeholder="Blog Title" name="title">
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <input type="text" class="form-control" placeholder="Mr.Blog Writer" name="authorName">
                </div>
                <div class="form-group">
                    <label>Blog Content</label>
                    <textarea class="form-control" rows="5" placeholder="Blog Content Here" name="content"></textarea>
                </div>
                <button href="" type="submit" class="btn btn-primary">Submit</button>
            </g:form>

        </div>
    </div>

</div>
<!--/contact page content-->
</body>
</html>