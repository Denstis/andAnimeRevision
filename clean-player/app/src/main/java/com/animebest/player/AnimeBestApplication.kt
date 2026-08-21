package com.animebest.player

import android.app.Application
import androidx.appcompat.app.AppCompatDelegate

/**
 * Основное приложение - инициализация компонентов
 * Без рекламы, без Firebase Analytics, без лишних сервисов
 */
class AnimeBestApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        
        // Инициализация темной темы (опционально)
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        
        // Здесь можно добавить инициализацию базы данных Room
        // и других необходимых компонентов
    }
}
