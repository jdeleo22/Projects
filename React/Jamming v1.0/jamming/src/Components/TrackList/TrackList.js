import React from "react";
import './TrackList.css';

import Track from '../Track/Track'

class TrackList extends React.Component{
    render(){
        const tracklist = this.props.tracks.map(track => {
            return <Track track={track} key={track.id} 
            onAdd={this.props.onAdd}
            onRemove={this.props.onRemove}
            isRemoval={this.props.isRemoval}/>
        });
        return(
        <div className="TrackList">
        {tracklist}
        </div>
        )
    }
}

export default TrackList;