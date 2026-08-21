package com.animebest.player.ui.main

import android.os.Bundle
import android.view.Menu
import android.view.MenuItem
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SearchView
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import com.animebest.player.R
import com.google.android.material.bottomnavigation.BottomNavigationView

/**
 * Главная активность - основной экран навигации
 * Содержит каталог аниме, поиск, списки и профиль
 */
class MainActivity : AppCompatActivity() {

    private lateinit var bottomNavigation: BottomNavigationView
    private lateinit var recyclerView: RecyclerView
    private lateinit var swipeRefresh: SwipeRefreshLayout
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        setupViews()
        setupBottomNavigation()
        loadAnimeList()
    }

    private fun setupViews() {
        bottomNavigation = findViewById(R.id.bottom_navigation)
        recyclerView = findViewById(R.id.recycler_view)
        swipeRefresh = findViewById(R.id.swipe_refresh)
        
        // Настройка RecyclerView
        recyclerView.layoutManager = GridLayoutManager(this, 2)
        
        // Настройка SwipeRefreshLayout
        swipeRefresh.setOnRefreshListener {
            loadAnimeList()
        }
    }

    private fun setupBottomNavigation() {
        bottomNavigation.setOnItemSelectedListener { item ->
            when (item.itemId) {
                R.id.nav_home -> {
                    loadAnimeList()
                    true
                }
                R.id.nav_search -> {
                    openSearch()
                    true
                }
                R.id.nav_mylist -> {
                    openMyLists()
                    true
                }
                R.id.nav_profile -> {
                    openProfile()
                    true
                }
                else -> false
            }
        }
    }

    private fun loadAnimeList() {
        // Загрузка списка аниме с сервера
        // TODO: реализовать загрузку через ViewModel
        swipeRefresh.isRefreshing = false
    }

    private fun openSearch() {
        // Открытие экрана поиска
        // TODO: реализовать навигацию
    }

    private fun openMyLists() {
        // Открытие экранов со списками
        // TODO: реализовать навигацию
    }

    private fun openProfile() {
        // Открытие экрана профиля
        // TODO: реализовать навигацию
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.main_menu, menu)
        
        val searchItem = menu.findItem(R.id.action_search)
        val searchView = searchItem.actionView as SearchView
        
        searchView.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                query?.let { performSearch(it) }
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                return false
            }
        })
        
        return true
    }

    private fun performSearch(query: String) {
        // TODO: реализовать поиск
    }
}
