package com.animeplayer.data.local

import android.content.Context
import android.content.SharedPreferences
import com.animeplayer.data.model.User

/**
 * Локальное хранилище данных (SharedPreferences)
 * Для хранения токена авторизации, пользователя и прогресса просмотра
 */
class LocalDataSource(context: Context) {

    private val prefs: SharedPreferences = context.getSharedPreferences("anime_player_prefs", Context.MODE_PRIVATE)
    
    companion object {
        private const val KEY_USER_ID = "user_id"
        private const val KEY_USER_LOGIN = "user_login"
        private const val KEY_USER_EMAIL = "user_email"
        private const val KEY_USER_HASH = "user_hash"
        private const val KEY_IS_AUTHORIZED = "is_authorized"
        private const val KEY_WATCH_PROGRESS_PREFIX = "watch_progress_"
    }

    // === Авторизация ===

    fun saveUser(user: User) {
        prefs.edit().apply {
            putLong(KEY_USER_ID, user.id)
            putString(KEY_USER_LOGIN, user.login)
            putString(KEY_USER_EMAIL, user.email)
            putString(KEY_USER_HASH, user.hash)
            putBoolean(KEY_IS_AUTHORIZED, true)
            apply()
        }
    }

    fun getCurrentUser(): User? {
        return if (isAuthorized()) {
            User(
                id = prefs.getLong(KEY_USER_ID, -1),
                login = prefs.getString(KEY_USER_LOGIN, "") ?: "",
                email = prefs.getString(KEY_USER_EMAIL, null),
                hash = prefs.getString(KEY_USER_HASH, null)
            )
        } else {
            null
        }
    }

    fun clearUser() {
        prefs.edit().apply {
            remove(KEY_USER_ID)
            remove(KEY_USER_LOGIN)
            remove(KEY_USER_EMAIL)
            remove(KEY_USER_HASH)
            putBoolean(KEY_IS_AUTHORIZED, false)
            apply()
        }
    }

    fun isAuthorized(): Boolean {
        return prefs.getBoolean(KEY_IS_AUTHORIZED, false)
    }

    // === Прогресс просмотра ===

    fun saveWatchProgress(animeId: Long, episode: Int, timestamp: Long) {
        val key = "${KEY_WATCH_PROGRESS_PREFIX}${animeId}_${episode}"
        prefs.edit().putLong(key, timestamp).apply()
    }

    fun getWatchProgress(animeId: Long, episode: Int): Long {
        val key = "${KEY_WATCH_PROGRESS_PREFIX}${animeId}_${episode}"
        return prefs.getLong(key, 0L)
    }

    fun clearWatchProgress(animeId: Long) {
        // Очищаем весь прогресс для конкретного аниме
        val allPrefs = prefs.all
        val keysToRemove = allPrefs.keys.filter { 
            it.startsWith("${KEY_WATCH_PROGRESS_PREFIX}${animeId}_") 
        }
        prefs.edit().apply {
            keysToRemove.forEach { remove(it) }
            apply()
        }
    }
}
