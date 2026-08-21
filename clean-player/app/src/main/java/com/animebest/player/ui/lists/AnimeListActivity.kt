package com.animebest.player.ui.lists

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.viewpager2.widget.ViewPager2
import com.animebest.player.R
import com.animebest.player.databinding.ActivityAnimeListBinding
import com.google.android.material.tabs.TabLayout
import com.google.android.material.tabs.TabLayoutMediator

/**
 * Активность списков аниме пользователя
 * Вкладки: Смотрю, Просмотрено, Отложено, Брошено, Запланировано
 */
class AnimeListActivity : AppCompatActivity() {

    private lateinit var binding: ActivityAnimeListBinding
    
    companion object {
        val LIST_TABS = listOf(
            Pair("watching", R.string.list_watching),
            Pair("completed", R.string.list_completed),
            Pair("planning", R.string.list_planning),
            Pair("on_hold", R.string.list_on_hold),
            Pair("dropped", R.string.list_dropped)
        )
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityAnimeListBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupViews()
    }

    private fun setupViews() {
        // Настройка Toolbar
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        supportActionBar?.title = getString(R.string.nav_mylist)

        binding.toolbar.setNavigationOnClickListener {
            finish()
        }

        // Настройка TabLayout и ViewPager2
        setupViewPager()
    }

    private fun setupViewPager() {
        // TODO: создать адаптер для ViewPager2 с фрагментами списков
        // val adapter = ListsPagerAdapter(this)
        // binding.viewPager.adapter = adapter

        // TabLayoutMediator(binding.tabLayout, binding.viewPager) { tab, position ->
        //     tab.text = getString(LIST_TABS[position].second)
        // }.attach()
    }
}

/**
 * Адаптер для ViewPager2 со списками
 * Будет реализован отдельно
 */
// class ListsPagerAdapter(fragmentActivity: FragmentActivity) : FragmentStateAdapter(fragmentActivity) {
//     override fun getItemCount(): Int = AnimeListActivity.LIST_TABS.size
//     
//     override fun createFragment(position: Int): Fragment {
//         val listType = AnimeListActivity.LIST_TABS[position].first
//         return ListFragment.newInstance(listType)
//     }
// }
