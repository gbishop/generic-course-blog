<%!
 current_ = 'home' 
%>
<%inherit file="_templates/site.mako" />
<h1>Welcome</h1>
<p>
Welcome to the web page for ...
</p>

<h3>Latest posts</h3>
<ul>
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
</ul>

