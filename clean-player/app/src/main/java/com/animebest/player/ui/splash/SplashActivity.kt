package com.animebest.player.ui.splash

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.appcompat.app.AppCompatActivity
import com.animebest.player.ui.auth.LoginActivity
import com.animebest.player.ui.main.MainActivity
import com.animebest.player.utils.PreferencesManager

/**
 * Экран заставки (Splash Screen)
 * Проверка авторизации и переход на главный экран или экран входа
 */
class SplashActivity : AppCompatActivity() {

    companion object {
        private const val SPLASH_DELAY = 1500L // 1.5 секунды
    }

    private lateinit var preferencesManager: PreferencesManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        preferencesManager = PreferencesManager(this)

        // Задержка для показа splash screen
        Handler(Looper.getMainLooper()).postDelayed({
            navigateToNextScreen()
        }, SPLASH_DELAY)
    }

    private fun navigateToNextScreen() {
        val intent = if (preferencesManager.isLoggedIn) {
            // Пользователь авторизован - переходим на главный экран
            Intent(this, MainActivity::class.java)
        } else {
            // Пользователь не авторизован - переходим на экран входа
            Intent(this, LoginActivity::class.java)
        }

        startActivity(intent)
        finish()
    }
}
