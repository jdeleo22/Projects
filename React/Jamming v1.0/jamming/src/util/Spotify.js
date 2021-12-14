
let accessToken;
const clientID = '';
const redirectURI = 'http://spotifyplaylist_jd.surge.sh/';
//http://localhost:3000/
const Spotify = {

    getAccessToken(){
        //using implicit grant flow, no server side code-take tokens transferred through url
        if(accessToken){
            return accessToken;
        }

        //check for access token match -window href returns current url
        const accessTokenMatch = window.location.href.match(/access_token=([^&]*)/);
        const tokenExpires = window.location.href.match(/expires_in=([^&]*)/);

        if(accessTokenMatch && tokenExpires){
            accessToken = accessTokenMatch[1];
            const expiresIn = Number(tokenExpires[1]);

            //clears params, allows to grab new token after expiration
            window.setTimeout(() => accessToken = '', expiresIn * 1000);
            window.history.pushState('Access Token', null, '/');
            return accessToken;

        } else {
            const accessURL = `https://accounts.spotify.com/authorize?client_id=${clientID}&response_type=token&scope=playlist-modify-public&redirect_uri=${redirectURI}`;
            window.location = accessURL;
        }
    },

    search(term){
        const accessToken = Spotify.getAccessToken();

        return fetch(`https://api.spotify.com/v1/search?type=track&q=${term}`,
        {headers: {
            Authorization: `Bearer ${accessToken}`
        }
        }).then(response => {
            return response.json();
        }).then(jsonResponse => {
            if(!jsonResponse.tracks){
                return [];
            }
            return jsonResponse.tracks.items.map(track => ({
                    id: track.id,
                    name: track.name,
                    artist: track.artists[0].name,
                    album: track.album.name,
                    uri: track.uri
                }));         
        });
    },

    savePlaylist(name,arrayURI){

        if (!name || !arrayURI.length) {
            return;
        }

        const accessToken = Spotify.getAccessToken();
        const headers = { Authorization: `Bearer ${accessToken}`};
        let userID;

        return fetch('https://api.spotify.com/v1/me', {headers: headers}
        ).then(response => response.json()
        ).then(jsonResponse => {
            userID = jsonResponse.id;
            return fetch(`https://api.spotify.com/v1/users/${userID}/playlists`, {
                headers: headers,
                method: 'POST',
                body: JSON.stringify({name: name})
            }).then(response => response.json()
            ).then(jsonResponse => {
                const playlistID = jsonResponse.id;
                return fetch(`https://api.spotify.com/v1/users/${userID}/playlists/${playlistID}/tracks`, {
                    headers: headers,
                    method: 'POST',
                    body: JSON.stringify({ uris: arrayURI})
                });
            });
        });
    }

}

export default Spotify;