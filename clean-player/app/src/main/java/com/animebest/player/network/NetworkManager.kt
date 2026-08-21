package com.animebest.player.network

import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit

/**
 * Менеджер сети - создание и настройка Retrofit
 * Без рекламы и трекеров
 */
object NetworkManager {

    private const val BASE_URL = "https://animebestapp.org/"
    
    private val loggingInterceptor = HttpLoggingInterceptor().apply {
        level = HttpLoggingInterceptor.Level.BODY
    }

    private val okHttpClient = OkHttpClient.Builder()
        .addInterceptor(loggingInterceptor)
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .build()

    private val retrofit = Retrofit.Builder()
        .baseUrl(BASE_URL)
        .client(okHttpClient)
        .addConverterFactory(GsonConverterFactory.create())
        .build()

    val apiService: AnimeApiService = retrofit.create(AnimeApiService::class.java)

    /**
     * Создать новый клиент с токеном авторизации
     */
    fun createAuthenticatedClient(token: String): AnimeApiService {
        val authClient = OkHttpClient.Builder()
            .addInterceptor { chain ->
                val request = chain.request().newBuilder()
                    .addHeader("Authorization", "Bearer $token")
                    .build()
                chain.proceed(request)
            }
            .addInterceptor(loggingInterceptor)
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .build()

        val authRetrofit = Retrofit.Builder()
            .baseUrl(BASE_URL)
            .client(authClient)
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        return authRetrofit.create(AnimeApiService::class.java)
    }
}
