package com.animebest.player.ui.auth

import android.content.Intent
import android.os.Bundle
import android.util.Patterns
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.animebest.player.R
import com.animebest.player.databinding.ActivityRegisterBinding
import com.animebest.player.network.NetworkManager
import com.animebest.player.ui.main.MainActivity
import com.animebest.player.utils.PreferencesManager
import kotlinx.coroutines.launch

/**
 * Активность регистрации нового аккаунта
 * Без рекламы и лишних функций
 */
class RegisterActivity : AppCompatActivity() {

    private lateinit var binding: ActivityRegisterBinding
    private lateinit var preferencesManager: PreferencesManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityRegisterBinding.inflate(layoutInflater)
        setContentView(binding.root)

        preferencesManager = PreferencesManager(this)

        setupViews()
    }

    private fun setupViews() {
        // Кнопка регистрации
        binding.btnRegister.setOnClickListener {
            val username = binding.etUsername.text.toString().trim()
            val email = binding.etEmail.text.toString().trim()
            val password = binding.etPassword.text.toString().trim()

            if (validateInput(username, email, password)) {
                performRegister(username, email, password)
            }
        }

        // Переход ко входу
        binding.tvLogin.setOnClickListener {
            finish()
        }
    }

    private fun validateInput(username: String, email: String, password: String): Boolean {
        var isValid = true

        if (username.isEmpty()) {
            binding.inUsername.error = "Введите имя пользователя"
            isValid = false
        } else if (username.length < 3) {
            binding.inUsername.error = "Имя должно быть не менее 3 символов"
            isValid = false
        } else {
            binding.inUsername.error = null
        }

        if (email.isEmpty()) {
            binding.inEmail.error = getString(R.string.error_email_empty)
            isValid = false
        } else if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
            binding.inEmail.error = getString(R.string.error_invalid_email)
            isValid = false
        } else {
            binding.inEmail.error = null
        }

        if (password.isEmpty()) {
            binding.inPassword.error = getString(R.string.error_password_empty)
            isValid = false
        } else if (password.length < 6) {
            binding.inPassword.error = "Пароль должен быть не менее 6 символов"
            isValid = false
        } else {
            binding.inPassword.error = null
        }

        return isValid
    }

    private fun performRegister(username: String, email: String, password: String) {
        showLoading(true)

        lifecycleScope.launch {
            try {
                val response = NetworkManager.apiService.register(username, email, password)
                
                if (response.isSuccessful) {
                    val registerResponse = response.body()
                    if (registerResponse != null && registerResponse.success) {
                        handleRegisterSuccess(registerResponse.user)
                    } else {
                        showError(registerResponse?.message ?: "Ошибка регистрации")
                    }
                } else {
                    showError("Ошибка сервера при регистрации")
                }
            } catch (e: Exception) {
                showError("Ошибка сети: ${e.message}")
            } finally {
                showLoading(false)
            }
        }
    }

    private fun handleRegisterSuccess(user: com.animebest.player.model.User?) {
        Toast.makeText(this, "Регистрация успешна", Toast.LENGTH_SHORT).show()

        // Если пользователь вернулся, сохраняем данные и переходим на главный экран
        user?.let {
            preferencesManager.saveUser(it)
            val intent = Intent(this, MainActivity::class.java)
            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            startActivity(intent)
            finish()
        } ?: run {
            // Иначе просто возвращаемся на экран входа
            finish()
        }
    }

    private fun showError(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show()
    }

    private fun showLoading(isLoading: Boolean) {
        binding.progressBar.visibility = if (isLoading) android.view.View.VISIBLE else android.view.View.GONE
        binding.btnRegister.isEnabled = !isLoading
    }
}
