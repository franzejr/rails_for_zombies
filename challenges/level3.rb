  #Challenge 1
    <% zombie = Zombie.first %>
    <h1><%= zombie.name %></h1>
    <p>
      <%=zombie.graveyard %>
    </p>  
  
  #Challenge 2
    <% zombie = Zombie.first %>
    <p>
      <%= link_to zombie.name, zombie_path(zombie) %>
    </p>

  #Challenge 3
    <% zombies = Zombie.all %>
    <ul>
      <% zombies.each do |zombie| %>
        <%=zombie.name %>
      <%end%>
    </ul>

  #Challenge 4 
  <% zombies = Zombie.all %>

  <ul>
    <% zombies.each do |zombie| %>
      <li>
        <%=zombie.name%>
        <% if zombie.tweets %>
          <%="SMART ZOMBIE"%>
        <% end %>
      </li>
    <% end %>
  </ul>

  #Challenge 5 
  
  <% zombies = Zombie.all %>

  <ul>
    <% zombies.each do |zombie| %>
      <li>
        <%= zombie.name %>
        <%= link_to zombie.name, edit_zombie_path(zombie) %>
      </li>
    <% end %>
  </ul>
