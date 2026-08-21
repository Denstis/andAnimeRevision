package com.animebest.player.ui.profile

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.animebest.player.R
import com.animebest.player.databinding.ActivityProfileBinding
import com.animebest.player.ui.auth.LoginActivity
import com.animebest.player.utils.PreferencesManager

/**
 * Активность профиля пользователя
 * Управление аккаунтом, статистика, настройки
 */
class ProfileActivity : AppCompatActivity() {

    private lateinit var binding: ActivityProfileBinding
    private lateinit var preferencesManager: PreferencesManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityProfileBinding.inflate(layoutInflater)
        setContentView(binding.root)

        preferencesManager = PreferencesManager(this)

        setupViews()
        loadUserProfile()
    }

    private fun setupViews() {
        // Настройка Toolbar
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        supportActionBar?.title = getString(R.string.nav_profile)

        binding.toolbar.setNavigationOnClickListener {
            finish()
        }

        // Кнопка выхода
        binding.btnLogout.setOnClickListener {
            showLogoutConfirmation()
        }

        // Кнопка редактирования профиля
        binding.btnEditProfile.setOnClickListener {
            // TODO: открыть экран редактирования
        }
    }

    private fun loadUserProfile() {
        val username = preferencesManager.username ?: "Пользователь"
        val email = preferencesManager.email ?: ""

        binding.tvUsername.text = username
        binding.tvEmail.text = email

        // Загрузка статистики
        // TODO: загрузить статистику из API или БД
        updateStats()
    }

    private fun updateStats() {
        // Пример статистики
        binding.tvWatchingCount.text = "0"
        binding.tvCompletedCount.text = "0"
        binding.tvPlanningCount.text = "0"
        
        // TODO: реальные данные из базы данных
    }

    private fun showLogoutConfirmation() {
        AlertDialog.Builder(this)
            .setTitle("Выход из аккаунта")
            .setMessage("Вы уверены, что хотите выйти?")
            .setPositiveButton("Выйти") { _, _ -> performLogout() }
            .setNegativeButton("Отмена", null)
            .show()
    }

    private fun performLogout() {
        // Очистка данных авторизации
        preferencesManager.clearAuth()

        // Переход на экран входа
        val intent = Intent(this, LoginActivity::class.java)
        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        startActivity(intent)
        finish()
    }
}
