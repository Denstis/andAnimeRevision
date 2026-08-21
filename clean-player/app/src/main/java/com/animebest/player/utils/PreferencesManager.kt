package com.animebest.player.utils

import android.content.Context
import android.content.SharedPreferences
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.MasterKey
import com.animebest.player.model.User

/**
 * Менеджер предпочтений - хранение настроек и токена авторизации
 * Используем EncryptedSharedPreferences для безопасного хранения
 */
class PreferencesManager(context: Context) {

    private val masterKey = MasterKey.Builder(context)
        .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
        .build()

    private val securePrefs: SharedPreferences = EncryptedSharedPreferences.create(
        context,
        "secure_prefs",
        masterKey,
        EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
        EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
    )

    private val regularPrefs = context.getSharedPreferences("app_prefs", Context.MODE_PRIVATE)

    companion object {
        private const val KEY_TOKEN = "auth_token"
        private const val KEY_USER_ID = "user_id"
        private const val KEY_USERNAME = "username"
        private const val KEY_EMAIL = "email"
        private const val KEY_IS_LOGGED_IN = "is_logged_in"
        
        private const val KEY_NIGHT_MODE = "night_mode"
        private const val KEY_PLAYER_QUALITY = "player_quality"
        private const val KEY_AUTO_PLAY = "auto_play"
    }

    // === Аутентификация ===

    var authToken: String?
        get() = securePrefs.getString(KEY_TOKEN, null)
        set(value) = securePrefs.edit().putString(KEY_TOKEN, value).apply()

    var isLoggedIn: Boolean
        get() = regularPrefs.getBoolean(KEY_IS_LOGGED_IN, false)
        set(value) = regularPrefs.edit().putBoolean(KEY_IS_LOGGED_IN, value).apply()

    var userId: Int?
        get() = securePrefs.getInt(KEY_USER_ID, -1).takeIf { it != -1 }
        set(value) = value?.let { securePrefs.edit().putInt(KEY_USER_ID, it).apply() }

    var username: String?
        get() = securePrefs.getString(KEY_USERNAME, null)
        set(value) = securePrefs.edit().putString(KEY_USERNAME, value).apply()

    var email: String?
        get() = securePrefs.getString(KEY_EMAIL, null)
        set(value) = securePrefs.edit().putString(KEY_EMAIL, value).apply()

    fun saveUser(user: User) {
        userId = user.id
        username = user.username
        email = user.email
        isLoggedIn = true
    }

    fun clearAuth() {
        authToken = null
        userId = null
        username = null
        email = null
        isLoggedIn = false
        securePrefs.edit().clear().apply()
    }

    // === Настройки ===

    var isNightMode: Boolean
        get() = regularPrefs.getBoolean(KEY_NIGHT_MODE, false)
        set(value) = regularPrefs.edit().putBoolean(KEY_NIGHT_MODE, value).apply()

    var playerQuality: String
        get() = regularPrefs.getString(KEY_PLAYER_QUALITY, "auto") ?: "auto"
        set(value) = regularPrefs.edit().putString(KEY_PLAYER_QUALITY, value).apply()

    var autoPlay: Boolean
        get() = regularPrefs.getBoolean(KEY_AUTO_PLAY, true)
        set(value) = regularPrefs.edit().putBoolean(KEY_AUTO_PLAY, value).apply()
}
