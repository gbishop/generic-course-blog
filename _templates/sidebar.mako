        <div id="sidebar" class="grid_4 omega">
          <aside class="widget">
            <h3>Categories</h3>
            <ul>
<%
  all_categories = bf.config.blog.all_categories
  all_categories.sort(key=lambda i: i[0].name)
%>
          % for category, num_posts in sorted(all_categories):
               <li><a href="${category.path}">${category}</a> (${num_posts})</li>
          % endfor
            </ul>
          </aside>
          <aside class="widget">
            <h3>Archives</h3>
              <p>
              <select onchange="location=this.options[this.selectedIndex].value;">
              % for link, name, num_posts in bf.config.blog.archive_links:
                <option value="${bf.util.site_path_helper(bf.config.blog.path,link)}/1">${name}&nbsp;(${num_posts})</option>
              % endfor
              </select>
              </p>
          </aside>
          <aside class="widget">
            <form action="search.html">
              <input type="search" placeholder="Search..." name="q" />
              <input type="submit" value="Search..." />
            </form>
          </aside>
          <aside class="widget">
            <h3>Contact</h3>
            <p><a href="http://www.cs.unc.edu/~gb/">Gary Bishop</a>
             <a href="mailto:gb@cs.unc.edu">gb@cs.unc.edu</a><br/>
            255 Sitterson Hall CB 3175<br/>
            919-962-1886<br/>
            <br/>
            Teaching Assistants: <br/>
            Sujeong Kim, SN008, sujeong@cs.unc.edu<br/>
            Luis Torres, SN008, luis@cs.unc.edu<br/>
            <br/>
            Feed: <a class="feed" href="${bf.util.site_path_helper(bf.config.blog.path,'feed/')}">Posts</a>
% if bf.config.blog.disqus.enabled:
              and <a class="feed" href="http://${bf.config.blog.disqus.name}.disqus.com/latest.rss">Comments</a>
% endif
            </p>
          </aside>
        </div> <!-- end sidebar -->

