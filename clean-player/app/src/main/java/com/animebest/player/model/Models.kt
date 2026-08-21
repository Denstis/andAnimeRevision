package com.animebest.player.model

/**
 * Модель аниме - основная информация
 */
data class Anime(
    val id: Int,
    val title: String,
    val titleAlt: String? = null,
    val description: String? = null,
    val posterUrl: String? = null,
    val coverUrl: String? = null,
    val type: String? = null,          // TV, Movie, OVA, etc.
    val status: String? = null,        // ongoing, completed, announced
    val year: Int? = null,
    val episodesTotal: Int? = null,
    val episodesWatched: Int? = null,
    val rating: Float? = null,
    val genres: List<String> = emptyList(),
    val url: String? = null,
    val isFavorite: Boolean = false,
    val listStatus: ListStatus? = null
)

/**
 * Статусы списков аниме
 */
enum class ListStatus {
    WATCHING,      // Смотрю
    COMPLETED,     // Просмотрено
    ON_HOLD,       // Отложено
    DROPPED,       // Брошено
    PLANNING,      // Запланировано
    REWATCHING     // Пересматриваю
}

/**
 * Эпизод аниме для просмотра
 */
data class Episode(
    val id: Int,
    val number: Int,
    val title: String? = null,
    val videoUrl: String? = null,
    val thumbnailUrl: String? = null,
    val duration: Long? = null  // длительность в секундах
)

/**
 * Пользователь (для профиля)
 */
data class User(
    val id: Int,
    val username: String,
    val email: String? = null,
    val avatarUrl: String? = null,
    val stats: UserStats? = null
)

/**
 * Статистика пользователя
 */
data class UserStats(
    val watchedCount: Int = 0,
    val episodesWatched: Int = 0,
    val timeSpent: Long = 0  // время в минутах
)

/**
 * Результат поиска
 */
data class SearchResult(
    val animes: List<Anime>,
    val totalResults: Int,
    val currentPage: Int = 1,
    val totalPages: Int = 1
)
