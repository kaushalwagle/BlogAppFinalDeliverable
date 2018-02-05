<%@ page import="blog.Blog" %>
<!doctype html>
<html>
<head>
    <!--link to 'main' layout-->
    <meta name="layout" content="_page"/>

    <title>
        <g:if test="${specificBlog}">
            Update Blog
        </g:if>
        <g:else>
            Create Your Own Blog
        </g:else>
    </title>
</head>

<body>

<!--contact page content-->
<div class="container">
    <div class="row" style="margin-bottom: 80px">
        <div class="col-md-12">
            <h1>
                <g:if test="${specificBlog}">
                    Update Your Blog Post
                </g:if>
                <g:else>
                    Create Your Own Blog Here
                </g:else>
            </h1>

            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>

            <%
                Blog blogSpot = new Blog()
                String action
            %>

            <g:if test="${specificBlog}">
                <%
                    blogSpot = specificBlog
                    action = "update"
                %>
            </g:if>
            <g:else>
                <%
                    blogSpot.title = ""
                    blogSpot.authorName = ""
                    blogSpot.content = ""
                    action = "save"
                %>
            </g:else>

            <g:form controller="blog" action="${action}">
                <div class="form-group">
                    <label for="">Blog Title</label>
                    <input type="text" class="form-control" placeholder="Blog Title" name="title"
                           value="${blogSpot.title}">
                </div>

                <div class="form-group">
                    <label>Author</label>
                    <input type="text" class="form-control" placeholder="Mr.Blog Writer" name="authorName"
                           value="${blogSpot.authorName}">
                </div>

                <div class="form-group">
                    <label>Blog Content</label>
                    <textarea class="form-control" rows="5" placeholder="Blog Content Here"
                              name="content">${blogSpot.content}</textarea>
                </div>
                <g:if test="${specificBlog}">
                    <g:hiddenField name="id" value="${specificBlog.id}"/>
                </g:if>
                <button href="" type="submit" class="btn btn-primary">Submit</button>
            </g:form>

        </div>
    </div>

</div>
<!--/contact page content-->
</body>
</html>