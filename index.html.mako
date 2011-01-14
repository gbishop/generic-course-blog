<%!
 current_ = 'home' 
%>
<%inherit file="_templates/site.mako" />
<h1>Welcome</h1>
<p>
Welcome to the web page for Comp 915 Technical Communication in Computer Science.</p>

<p><a href="files/915-11s Plan.pdf">Plan for Spring 2011.</a>
</p>

<h3>Latest posts</h3>
<ul>
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
</ul>

