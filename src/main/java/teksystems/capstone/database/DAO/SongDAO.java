package teksystems.capstone.database.DAO;

import teksystems.capstone.database.Entity.Song;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SongDAO extends JpaRepository<Song, Integer> {

    Song findSongById(@Param("id") Integer id);

    Song findSongBySongName(@Param("song_name") String song_name);

    List<Song> findSongByArtistName(@Param("artist_name") String artist_name);

    List<Song> findSongByAlbumName(@Param("album_name") String album_name);

    List<Song> findSongBySongTime(@Param("song_time") String song_time);

    List<Song> findSongBySongKey(@Param("song_key") String song_key);

    List<Song> findSongBySongGenre(@Param("song_genre") String song_genre);

    List<Song> findSongByUserId(@Param("user_id") Integer user_id);

    List<Song> findAll();




}

