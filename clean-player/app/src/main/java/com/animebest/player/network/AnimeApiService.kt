package com.animebest.player.network

import com.animebest.player.model.Anime
import com.animebest.player.model.Episode
import com.animebest.player.model.SearchResult
import com.animebest.player.model.User
import retrofit2.Response
import retrofit2.http.*

/**
 * API сервис для работы с сервером аниме
 * Чистый интерфейс без рекламы и лишних функций
 */
interface AnimeApiService {

    // === Аутентификация ===
    
    @POST("api/auth/login")
    suspend fun login(
        @Field("login") login: String,
        @Field("password") password: String
    ): Response<LoginResponse>

    @POST("api/auth/register")
    suspend fun register(
        @Field("username") username: String,
        @Field("email") email: String,
        @Field("password") password: String
    ): Response<RegisterResponse>

    @POST("api/auth/logout")
    suspend fun logout(): Response<Unit>

    @GET("api/auth/me")
    suspend fun getCurrentUser(): Response<User>

    // === Поиск и каталог ===
    
    @GET("api/anime/search")
    suspend fun searchAnime(
        @Query("query") query: String,
        @Query("page") page: Int = 1,
        @Query("limit") limit: Int = 20
    ): Response<SearchResult>

    @GET("api/anime")
    suspend fun getAnimeList(
        @Query("page") page: Int = 1,
        @Query("limit") limit: Int = 20,
        @Query("sort") sort: String? = null,
        @Query("genre") genre: String? = null,
        @Query("year") year: Int? = null,
        @Query("status") status: String? = null
    ): Response<SearchResult>

    @GET("api/anime/{id}")
    suspend fun getAnimeDetail(
        @Path("id") animeId: Int
    ): Response<Anime>

    @GET("api/anime/{id}/episodes")
    suspend fun getEpisodes(
        @Path("id") animeId: Int
    ): Response<List<Episode>>

    @GET("api/anime/{id}/episode/{episodeNumber}/stream")
    suspend fun getEpisodeStream(
        @Path("id") animeId: Int,
        @Path("episodeNumber") episodeNumber: Int
    ): Response<StreamResponse>

    // === Списки пользователя ===
    
    @GET("api/user/lists")
    suspend fun getUserLists(
        @Header("Authorization") token: String
    ): Response<UserLists>

    @POST("api/user/list/add")
    suspend fun addToList(
        @Header("Authorization") token: String,
        @Field("anime_id") animeId: Int,
        @Field("status") status: String
    ): Response<Unit>

    @POST("api/user/list/update")
    suspend fun updateListStatus(
        @Header("Authorization") token: String,
        @Field("anime_id") animeId: Int,
        @Field("status") status: String,
        @Field("episodes_watched") episodesWatched: Int? = null
    ): Response<Unit>

    @POST("api/user/list/remove")
    suspend fun removeFromList(
        @Header("Authorization") token: String,
        @Field("anime_id") animeId: Int
    ): Response<Unit>

    @GET("api/user/list/{status}")
    suspend fun getListByStatus(
        @Header("Authorization") token: String,
        @Path("status") status: String,
        @Query("page") page: Int = 1,
        @Query("limit") limit: Int = 20
    ): Response<List<Anime>>
}

/**
 * Ответы API
 */
data class LoginResponse(
    val token: String,
    val user: User
)

data class RegisterResponse(
    val success: Boolean,
    val message: String,
    val user: User? = null
)

data class StreamResponse(
    val videoUrl: String,
    val subtitles: List<Subtitle>? = null
)

data class Subtitle(
    val language: String,
    val url: String
)

data class UserLists(
    val watching: List<Anime> = emptyList(),
    val completed: List<Anime> = emptyList(),
    val onHold: List<Anime> = emptyList(),
    val dropped: List<Anime> = emptyList(),
    val planning: List<Anime> = emptyList(),
    val rewatching: List<Anime> = emptyList()
)
