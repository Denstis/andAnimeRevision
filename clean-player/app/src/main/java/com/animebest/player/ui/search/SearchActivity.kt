package com.animebest.player.ui.search

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SearchView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.animebest.player.R
import com.animebest.player.databinding.ActivitySearchBinding

/**
 * Активность поиска аниме
 * Без рекламы и лишних функций
 */
class SearchActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySearchBinding
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySearchBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupViews()
    }

    private fun setupViews() {
        // Настройка Toolbar
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        supportActionBar?.title = getString(R.string.nav_search)

        binding.toolbar.setNavigationOnClickListener {
            finish()
        }

        // Настройка SearchView
        binding.searchView.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                query?.let { performSearch(it) }
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                // Опционально: поиск при вводе текста
                // if (!newText.isNullOrBlank()) {
                //     performSearch(newText)
                // }
                return false
            }
        })

        // Настройка RecyclerView для результатов
        binding.recyclerView.layoutManager = LinearLayoutManager(this)
        // binding.recyclerView.adapter = ... // TODO: адаптер для результатов
    }

    private fun performSearch(query: String) {
        if (query.isBlank()) return

        showLoading(true)

        // TODO: выполнить поиск через API
        // lifecycleScope.launch {
        //     try {
        //         val response = NetworkManager.apiService.searchAnime(query)
        //         if (response.isSuccessful) {
        //             displayResults(response.body()?.animes ?: emptyList())
        //         }
        //     } catch (e: Exception) {
        //         showError(e.message ?: "Ошибка поиска")
        //     } finally {
        //         showLoading(false)
        //     }
        // }

        showLoading(false)
    }

    private fun showLoading(isLoading: Boolean) {
        binding.progressBar.visibility = if (isLoading) android.view.View.VISIBLE else android.view.View.GONE
    }

    private fun showError(message: String) {
        // TODO: показать ошибку пользователю
    }
}
