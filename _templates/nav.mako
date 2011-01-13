<%page args="current"/>
        <nav>
          <ul id="menu" class="clearfix">
            ${item("", "Home")}
            ${item("blog/", "Blog")}
            ${item("links.html", "Links")}
            ${item("syllabus.html", "Syllabus")}
          </ul>
          <br class="clear" />
        </nav>
<%def name="item(link, text)" ><% 
  if current == text.lower():
    cl = ' class="current"'
  else:
    cl = ''
  %><li${cl}><a href="${bf.config.site.root}${link}">${text}</a></li>
</%def>
