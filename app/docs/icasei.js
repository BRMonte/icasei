var icasei = {
  store: function(options = {}){
    localStorage.setItem("id", options.id);
    localStorage.setItem("url", document.URL);
    localStorage.setItem("created_at", options.created_at);
  },
  fetch: function(key){
    return localStorage.getItem("key");
  }
}
