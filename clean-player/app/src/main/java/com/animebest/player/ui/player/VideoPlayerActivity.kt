package com.animebest.player.ui.player

import android.net.Uri
import android.os.Bundle
import androidx.annotation.OptIn
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
import com.animebest.player.R
import com.animebest.player.databinding.ActivityVideoPlayerBinding
import kotlinx.coroutines.launch

/**
 * Активность видеоплеера для просмотра аниме
 * На основе ExoPlayer (Media3) - без рекламы
 */
class VideoPlayerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityVideoPlayerBinding
    private var player: ExoPlayer? = null
    
    companion object {
        const val EXTRA_ANIME_ID = "anime_id"
        const val EXTRA_EPISODE_NUMBER = "episode_number"
        const val EXTRA_VIDEO_URL = "video_url"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityVideoPlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupPlayer()
        loadVideo()
    }

    @OptIn(androidx.media3.common.util.UnstableApi::class)
    private fun setupPlayer() {
        player = ExoPlayer.Builder(this)
            .build()
            .also { exoPlayer ->
                binding.playerView.player = exoPlayer
                
                // Обработчик ошибок воспроизведения
                exoPlayer.addListener(object : Player.Listener {
                    override fun onPlaybackException(exception: PlaybackException) {
                        showError("Ошибка воспроизведения: ${exception.message}")
                    }

                    override fun onPlayerError(error: PlaybackException) {
                        showError("Ошибка: ${error.message}")
                    }
                })
            }
    }

    private fun loadVideo() {
        val videoUrl = intent.getStringExtra(EXTRA_VIDEO_URL)
        
        if (videoUrl.isNullOrEmpty()) {
            // Если URL не передан, пробуем получить его из API
            val animeId = intent.getIntExtra(EXTRA_ANIME_ID, -1)
            val episodeNumber = intent.getIntExtra(EXTRA_EPISODE_NUMBER, 1)
            
            if (animeId != -1) {
                fetchVideoUrl(animeId, episodeNumber)
            } else {
                showError("Видео не найдено")
                finish()
            }
        } else {
            playVideo(videoUrl)
        }
    }

    private fun fetchVideoUrl(animeId: Int, episodeNumber: Int) {
        lifecycleScope.launch {
            try {
                // TODO: запрос к API для получения URL видео
                // val response = NetworkManager.apiService.getEpisodeStream(animeId, episodeNumber)
                // if (response.isSuccessful) {
                //     playVideo(response.body()?.videoUrl ?: "")
                // }
                
                // Заглушка для демонстрации
                showError("URL видео будет получен из API")
            } catch (e: Exception) {
                showError("Ошибка загрузки видео: ${e.message}")
            }
        }
    }

    @OptIn(androidx.media3.common.util.UnstableApi::class)
    private fun playVideo(url: String) {
        player?.let { exoPlayer ->
            val mediaItem = MediaItem.fromUri(Uri.parse(url))
            exoPlayer.setMediaItem(mediaItem)
            exoPlayer.prepare()
            exoPlayer.play()
            
            binding.progressBar.visibility = android.view.View.GONE
        }
    }

    private fun showError(message: String) {
        binding.errorMessage.text = message
        binding.errorMessage.visibility = android.view.View.VISIBLE
        binding.progressBar.visibility = android.view.View.GONE
    }

    override fun onPause() {
        super.onPause()
        // Приостанавливаем воспроизведение при уходе из приложения
        player?.pause()
    }

    override fun onResume() {
        super.onResume()
        // Возобновляем если нужно
        // player?.play()
    }

    override fun onDestroy() {
        super.onDestroy()
        // Освобождаем ресурсы плеера
        player?.release()
        player = null
    }

    override fun onBackPressed() {
        // Можно добавить логику подтверждения выхода
        super.onBackPressed()
    }
}
