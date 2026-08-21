package com.animeplayer.data.repository

import com.animeplayer.data.api.ApiService
import com.animeplayer.data.api.AnimeListResponse
import com.animeplayer.data.api.StatusResponse
import com.animeplayer.data.api.UserResponse
import com.animeplayer.data.model.Anime
import com.animeplayer.data.model.User
import com.animeplayer.data.local.LocalDataSource

class Repository(
    private val apiService: ApiService,
    private val localDataSource: LocalDataSource
) {
    
    // Авторизация
    suspend fun login(login: String, password: String): Result<User> {
        return try {
            val response = apiService.login(login = login, password = password)
            if (response.isSuccessful && response.body()?.status == "success") {
                response.body()?.result?.let { user ->
                    localDataSource.saveUser(user)
                    Result.success(user)
                } ?: Result.failure(Exception("Пользователь не найден"))
            } else {
                Result.failure(Exception(response.body()?.message ?: "Ошибка авторизации"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Регистрация
    suspend fun register(login: String, password: String, email: String): Result<User> {
        return try {
            val response = apiService.register(login = login, password = password, email = email)
            if (response.isSuccessful && response.body()?.status == "success") {
                response.body()?.result?.let { user ->
                    localDataSource.saveUser(user)
                    Result.success(user)
                } ?: Result.failure(Exception("Пользователь не создан"))
            } else {
                Result.failure(Exception(response.body()?.message ?: "Ошибка регистрации"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Выход
    fun logout() {
        localDataSource.clearUser()
    }
    
    // Проверка авторизации
    fun isAuthorized(): Boolean = localDataSource.isAuthorized()
    
    // Получение текущего пользователя
    fun getCurrentUser(): User? = localDataSource.getCurrentUser()
    
    // Поиск аниме
    suspend fun searchAnime(query: String, page: Int = 1): Result<List<Anime>> {
        return try {
            val offset = (page - 1) * 20
            val where = listOf("title:%${query}%")
            val response = apiService.searchAnime(where = where, offset = offset)
            if (response.isSuccessful && response.body()?.status == "success") {
                Result.success(response.body()?.result ?: emptyList())
            } else {
                Result.failure(Exception("Ошибка поиска"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Получение аниме по категории
    suspend fun getAnimeByCategory(category: String, page: Int = 1): Result<List<Anime>> {
        return try {
            val offset = (page - 1) * 20
            val response = apiService.getAnimeByCategory(category = category, offset = offset)
            if (response.isSuccessful && response.body()?.status == "success") {
                Result.success(response.body()?.result ?: emptyList())
            } else {
                Result.failure(Exception("Ошибка получения списка"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Получение информации об аниме
    suspend fun getAnimeInfo(id: Long): Result<Anime> {
        return try {
            val response = apiService.getAnimeInfo(id = id)
            if (response.isSuccessful && response.body()?.status == "success") {
                response.body()?.result?.let { anime ->
                    Result.success(anime)
                } ?: Result.failure(Exception("Аниме не найдено"))
            } else {
                Result.failure(Exception("Ошибка получения информации"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Добавление в список
    suspend fun addToWatchList(animeId: Long, status: String): Result<Unit> {
        return try {
            val userId = localDataSource.getCurrentUser()?.id?.toString() ?: return Result.failure(Exception("Пользователь не авторизован"))
            val response = apiService.addToWatchList(
                userId = userId,
                postId = animeId.toString(),
                type = status
            )
            if (response.isSuccessful && response.body()?.status == "success") {
                Result.success(Unit)
            } else {
                Result.failure(Exception("Ошибка добавления в список"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Удаление из списка
    suspend fun removeFromWatchList(animeId: Long): Result<Unit> {
        return try {
            val userId = localDataSource.getCurrentUser()?.id?.toString() ?: return Result.failure(Exception("Пользователь не авторизован"))
            val response = apiService.removeFromWatchList(
                userId = userId,
                postId = animeId.toString()
            )
            if (response.isSuccessful && response.body()?.status == "success") {
                Result.success(Unit)
            } else {
                Result.failure(Exception("Ошибка удаления из списка"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Получение списка пользователя
    suspend fun getUserWatchList(status: String? = null): Result<List<Anime>> {
        return try {
            val userId = localDataSource.getCurrentUser()?.id?.toString() ?: return Result.failure(Exception("Пользователь не авторизован"))
            val response = apiService.getUserWatchList(userId = userId, type = status)
            if (response.isSuccessful && response.body()?.status == "success") {
                Result.success(response.body()?.result ?: emptyList())
            } else {
                Result.failure(Exception("Ошибка получения списка"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Сохранение прогресса просмотра
    suspend fun saveWatchProgress(animeId: Long, episode: Int): Result<Unit> {
        return try {
            val userId = localDataSource.getCurrentUser()?.id?.toString() ?: return Result.failure(Exception("Пользователь не авторизован"))
            val response = apiService.saveWatchProgress(
                userId = userId,
                postId = animeId.toString(),
                episode = episode
            )
            if (response.isSuccessful && response.body()?.status == "success") {
                Result.success(Unit)
            } else {
                Result.failure(Exception("Ошибка сохранения прогресса"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    // Получение сохраненного прогресса
    fun getWatchProgress(animeId: Long, episode: Int): Long {
        return localDataSource.getWatchProgress(animeId, episode)
    }
    
    // Сохранение прогресса локально
    fun saveWatchProgressLocal(animeId: Long, episode: Int, timestamp: Long) {
        localDataSource.saveWatchProgress(animeId, episode, timestamp)
    }
}
