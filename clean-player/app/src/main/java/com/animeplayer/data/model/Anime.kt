package com.animeplayer.data.model

import com.google.gson.annotations.SerializedName

data class Anime(
    @SerializedName("id") val id: Long,
    @SerializedName("title") val title: String,
    @SerializedName("full_story") val fullStory: String,
    @SerializedName("xfields") val xFields: XFields?,
    @SerializedName("category") val category: String? = null
) {
    // Извлечение постера из full_story
    fun getPosterUrl(): String? {
        return try {
            val srcStart = fullStory.indexOf("src=\"") + 5
            if (srcStart < 5) return null
            val srcEnd = fullStory.indexOf("\"", srcStart)
            if (srcEnd <= srcStart) return null
            var poster = fullStory.substring(srcStart, srcEnd)
            if (!poster.startsWith("http")) {
                poster = "https:$poster"
            }
            poster
        } catch (e: Exception) {
            null
        }
    }
    
    // Извлечение скриншотов
    fun getScreenshots(): List<String> {
        return try {
            val screens = mutableListOf<String>()
            xFields?.screen?.let { screenHtml ->
                val pattern = "<!--MBegin:(.*?)-->"
                val regex = Regex(pattern)
                val matches = regex.findAll(screenHtml)
                for (match in matches.take(3)) {
                    val url = match.groupValues[1].trim()
                    if (url.isNotEmpty()) {
                        screens.add(url)
                    }
                }
            }
            if (screens.isEmpty()) {
                getPosterUrl()?.let { screens.add(it) }
            }
            screens
        } catch (e: Exception) {
            listOfNotNull(getPosterUrl())
        }
    }
}

data class XFields(
    @SerializedName("names") val names: String,
    @SerializedName("kodik") val kodik: String? = null,
    @SerializedName("bazon") val bazon: String? = null,
    @SerializedName("poster") val poster: String,
    @SerializedName("genre") val genre: String,
    @SerializedName("year") val year: String,
    @SerializedName("type") val type: String,
    @SerializedName("director") val director: String,
    @SerializedName("screen") val screen: String? = null,
    @SerializedName("screen_1") val screen1: String? = null,
    @SerializedName("screen_2") val screen2: String? = null,
    @SerializedName("screen_3") val screen3: String? = null,
    @SerializedName("animelist") val animelist: String? = null,
    @SerializedName("seria") val seria: String? = null,
    @SerializedName("series_list") val seriesList: Map<String, String>? = null
) {
    // Получение списка серий
    fun getEpisodes(): List<Episode> {
        return seriesList?.map { (key, value) ->
            Episode(number = key.toIntOrNull() ?: 0, title = value, url = "")
        }?.sortedBy { it.number } ?: emptyList()
    }
}

data class Episode(
    val number: Int,
    val title: String,
    val url: String
)

data class User(
    @SerializedName("id") val id: Long,
    @SerializedName("login") val login: String,
    @SerializedName("email") val email: String? = null,
    @SerializedName("hash") val hash: String? = null
)

enum class WatchStatus(val value: String, val displayName: String) {
    COMPLETED("1", "Просмотрел"),
    ON_HOLD("2", "Отложено"),
    WATCHING("3", "Смотрю"),
    PLANNED("4", "Запланировано"),
    REVIEWING("5", "Рецензируется"),
    WILL_WATCH("6", "Буду смотреть")
}
