package com.animeplayer.data.api

import com.animeplayer.data.model.Anime
import com.animeplayer.data.model.User
import retrofit2.Response
import retrofit2.http.*

interface ApiService {
    
    // Авторизация и регистрация
    @POST("engine/apiController.php")
    suspend fun login(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "externalAuth",
        @Query("login") login: String,
        @Query("password") password: String
    ): Response<UserResponse>
    
    @POST("engine/apiController.php")
    suspend fun register(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "registration",
        @Query("login") login: String,
        @Query("password") password: String,
        @Query("email") email: String
    ): Response<UserResponse>
    
    @GET("engine/apiController.php")
    suspend fun getUserHash(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "getUserHash",
        @Query("ip") ip: String,
        @Query("user_id") userId: String
    ): Response<UserHashResponse>
    
    @GET("engine/apiController.php")
    suspend fun getUserInfo(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "getUserInfo",
        @Query("user_id") userId: String
    ): Response<UserResponse>
    
    // Поиск аниме
    @GET("engine/apiController.php")
    suspend fun searchAnime(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "getPostList",
        @Query("category") category: String? = null,
        @Query("limit") limit: Int = 20,
        @Query("offset") offset: Int = 0,
        @Query("sort") sort: String = "date",
        @Query("order") order: String = "desc",
        @Query("approve") approve: Int = 1,
        @Query("where[]") where: List<String>? = null
    ): Response<AnimeListResponse>
    
    // Получение списка аниме по категории
    @GET("engine/apiController.php")
    suspend fun getAnimeByCategory(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "getPostList",
        @Query("category") category: String,
        @Query("limit") limit: Int = 20,
        @Query("offset") offset: Int = 0,
        @Query("sort") sort: String = "date",
        @Query("order") order: String = "desc",
        @Query("approve") approve: Int = 1
    ): Response<AnimeListResponse>
    
    // Получение информации об аниме
    @GET("engine/apiController.php")
    suspend fun getAnimeInfo(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "getPostInfo",
        @Query("id") id: Long
    ): Response<AnimeInfoResponse>
    
    // Управление списками просмотра
    @POST("engine/apiController.php")
    suspend fun addToWatchList(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "addToList",
        @Query("user_id") userId: String,
        @Query("post_id") postId: String,
        @Query("type") type: String // 1-просмотрел, 2-отложено, 3-смотрю, 4-запланировано, 5-рецензируется, 6-буду смотреть
    ): Response<StatusResponse>
    
    @POST("engine/apiController.php")
    suspend fun removeFromWatchList(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "removeFromList",
        @Query("user_id") userId: String,
        @Query("post_id") postId: String
    ): Response<StatusResponse>
    
    @GET("engine/apiController.php")
    suspend fun getUserWatchList(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "getUserList",
        @Query("user_id") userId: String,
        @Query("type") type: String? = null
    ): Response<AnimeListResponse>
    
    // Сохранение прогресса просмотра
    @POST("engine/apiController.php")
    suspend fun saveWatchProgress(
        @Query("hash") hash: String = API_HASH,
        @Query("method") method: String = "saveProgress",
        @Query("user_id") userId: String,
        @Query("post_id") postId: String,
        @Query("episode") episode: Int
    ): Response<StatusResponse>
    
    companion object {
        const val API_HASH = "cxbthdf3234ss1d1ssav21sd21sv12f3"
        const val BASE_URL = "https://anime-best.com/"
    }
}

// Модели ответов
data class UserResponse(
    val status: String,
    val message: String? = null,
    val result: User? = null
)

data class UserHashResponse(
    val status: String,
    val hash: String? = null
)

data class AnimeListResponse(
    val status: String,
    val result: List<Anime>? = null
)

data class AnimeInfoResponse(
    val status: String,
    val result: Anime? = null
)

data class StatusResponse(
    val status: String,
    val message: String? = null
)
