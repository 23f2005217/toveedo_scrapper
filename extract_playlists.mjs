  import fs from 'fs';
  
  const data = JSON.parse(fs.readFileSync('/home/gir/Desktop/programming/kolbo-monorepo/tovedo/uploaded_videos_vps.json', 'utf8'));
  
  const playlists = new Set();
  
  // Format the slug into a title
  function formatTitle(slug) {
      if (!slug) return '';
      return slug
          .split('-')
          .map(word => {
             // Exception for small words if needed, but title case is fine
             return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
          })
          .join(' ');
  }

  for (const key in data) {
    const item = data[key];
    if (item.playlistUrl) {
      try {
        const urlObj = new URL(item.playlistUrl);
        // The pathname usually looks like "/programs/collection-story-time"
        const parts = urlObj.pathname.split('/');
        const slug = parts[parts.length - 1];
        if (slug) {
            playlists.add(formatTitle(slug));
            item.playlistName = formatTitle(slug);
        }
      } catch (e) {
        // Handle invalid URLs
      }
    } else if (item.metadata?.playlistUrl) {
      try {
        const urlObj = new URL(item.metadata.playlistUrl);
        const parts = urlObj.pathname.split('/');
        const slug = parts[parts.length - 1];
        if (slug) {
            playlists.add(formatTitle(slug));
            item.playlistName = formatTitle(slug);
        }
      } catch (e) {}
    }
  }
  
  fs.writeFileSync('/home/gir/Desktop/programming/kolbo-monorepo/tovedo/uploaded_videos_vps_with_playlists.json', JSON.stringify(data, null, 2));
  
  console.log("Unique Playlists Extracted:");
  console.log(Array.from(playlists));
