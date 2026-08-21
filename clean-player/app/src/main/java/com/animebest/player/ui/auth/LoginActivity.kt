package com.animebest.player.ui.auth

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.animebest.player.R
import com.animebest.player.databinding.ActivityLoginBinding
import com.animebest.player.model.User
import com.animebest.player.network.NetworkManager
import com.animebest.player.network.LoginResponse
import com.animebest.player.ui.main.MainActivity
import com.animebest.player.utils.PreferencesManager
import kotlinx.coroutines.launch
import retrofit2.Response

/**
 * Активность входа в аккаунт
 * Без рекламы и лишних функций
 */
class LoginActivity : AppCompatActivity() {

    private lateinit var binding: ActivityLoginBinding
    private lateinit var preferencesManager: PreferencesManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLoginBinding.inflate(layoutInflater)
        setContentView(binding.root)

        preferencesManager = PreferencesManager(this)

        setupViews()
    }

    private fun setupViews() {
        // Кнопка входа
        binding.btnLogin.setOnClickListener {
            val login = binding.etLogin.text.toString().trim()
            val password = binding.etPassword.text.toString().trim()

            if (validateInput(login, password)) {
                performLogin(login, password)
            }
        }

        // Переход к регистрации
        binding.tvRegister.setOnClickListener {
            startActivity(Intent(this, RegisterActivity::class.java))
        }

        // Восстановление пароля
        binding.tvForgotPassword.setOnClickListener {
            // TODO: открыть веб-страницу восстановления пароля
        }
    }

    private fun validateInput(login: String, password: String): Boolean {
        var isValid = true

        if (login.isEmpty()) {
            binding.inLogin.error = getString(R.string.error_login_empty)
            isValid = false
        } else {
            binding.inLogin.error = null
        }

        if (password.isEmpty()) {
            binding.inPassword.error = getString(R.string.error_password_empty)
            isValid = false
        } else {
            binding.inPassword.error = null
        }

        return isValid
    }

    private fun performLogin(login: String, password: String) {
        showLoading(true)

        lifecycleScope.launch {
            try {
                val response = NetworkManager.apiService.login(login, password)
                
                if (response.isSuccessful) {
                    val loginResponse = response.body()
                    if (loginResponse != null) {
                        handleLoginSuccess(loginResponse)
                    } else {
                        showError("Пустой ответ от сервера")
                    }
                } else {
                    showError("Неверный логин или пароль")
                }
            } catch (e: Exception) {
                showError("Ошибка сети: ${e.message}")
            } finally {
                showLoading(false)
            }
        }
    }

    private fun handleLoginSuccess(response: LoginResponse) {
        // Сохранение токена и данных пользователя
        preferencesManager.authToken = response.token
        preferencesManager.saveUser(response.user)

        Toast.makeText(this, "Вход выполнен успешно", Toast.LENGTH_SHORT).show()

        // Переход на главный экран
        val intent = Intent(this, MainActivity::class.java)
        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        startActivity(intent)
        finish()
    }

    private fun showError(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show()
    }

    private fun showLoading(isLoading: Boolean) {
        binding.progressBar.visibility = if (isLoading) android.view.View.VISIBLE else android.view.View.GONE
        binding.btnLogin.isEnabled = !isLoading
    }
}
