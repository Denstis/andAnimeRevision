package com.animebest.player.database

import android.content.Context
import androidx.room.*
import com.animebest.player.model.Anime
import com.animebest.player.model.ListStatus
import kotlinx.coroutines.flow.Flow

/**
 * Entity для хранения аниме в локальной базе данных
 */
@Entity(tableName = "anime_table")
data class AnimeEntity(
    @PrimaryKey val id: Int,
    val title: String,
    val titleAlt: String? = null,
    val description: String? = null,
    val posterUrl: String? = null,
    val coverUrl: String? = null,
    val type: String? = null,
    val status: String? = null,
    val year: Int? = null,
    val episodesTotal: Int? = null,
    val episodesWatched: Int? = null,
    val rating: Float? = null,
    val genres: String? = null,  // храним как JSON строку
    val url: String? = null,
    val listStatus: String? = null,  // WATCHING, COMPLETED, etc.
    val lastUpdated: Long = System.currentTimeMillis()
)

/**
 * DAO для работы с таблицей аниме
 */
@Dao
interface AnimeDao {

    @Query("SELECT * FROM anime_table WHERE listStatus IS NOT NULL ORDER BY lastUpdated DESC")
    fun getAllInLists(): Flow<List<AnimeEntity>>

    @Query("SELECT * FROM anime_table WHERE listStatus = :status ORDER BY lastUpdated DESC")
    fun getAnimeByStatus(status: String): Flow<List<AnimeEntity>>

    @Query("SELECT * FROM anime_table WHERE id = :id")
    suspend fun getAnimeById(id: Int): AnimeEntity?

    @Query("SELECT * FROM anime_table WHERE id = :id")
    fun getAnimeByIdFlow(id: Int): Flow<AnimeEntity?>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(anime: AnimeEntity)

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertAll(anime: List<AnimeEntity>)

    @Update
    suspend fun update(anime: AnimeEntity)

    @Delete
    suspend fun delete(anime: AnimeEntity)

    @Query("DELETE FROM anime_table WHERE id = :id")
    suspend fun deleteById(id: Int)

    @Query("UPDATE anime_table SET listStatus = :status, lastUpdated = :timestamp WHERE id = :id")
    suspend fun updateListStatus(id: Int, status: String?, timestamp: Long = System.currentTimeMillis())

    @Query("UPDATE anime_table SET episodesWatched = :episodes WHERE id = :id")
    suspend fun updateEpisodesWatched(id: Int, episodes: Int)

    @Query("SELECT COUNT(*) FROM anime_table WHERE listStatus IS NOT NULL")
    fun getCountInLists(): Flow<Int>

    @Query("SELECT COUNT(*) FROM anime_table WHERE listStatus = :status")
    fun getCountByStatus(status: String): Flow<Int>
}

/**
 * База данных Room
 */
@Database(entities = [AnimeEntity::class], version = 1, exportSchema = false)
abstract class AnimeDatabase : RoomDatabase() {

    abstract fun animeDao(): AnimeDao

    companion object {
        @Volatile
        private var INSTANCE: AnimeDatabase? = null

        fun getDatabase(context: Context): AnimeDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    AnimeDatabase::class.java,
                    "anime_database"
                )
                    .fallbackToDestructiveMigration()
                    .build()
                INSTANCE = instance
                instance
            }
        }
    }
}
