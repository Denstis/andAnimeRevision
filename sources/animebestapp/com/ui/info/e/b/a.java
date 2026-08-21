package animebestapp.com.ui.info.e.b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.app.c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.FunnyActivity;
import animebestapp.com.ui.info.NewPlayerActivity;
import animebestapp.com.ui.info.PlayerActivity;
import animebestapp.com.ui.info.e.b.d;
import animebestapp.com.ui.info.player.ExoPlayerActivity;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<animebestapp.com.ui.info.e.b.d, animebestapp.com.ui.info.e.b.b> implements animebestapp.com.ui.info.e.b.d, animebestapp.com.ui.a.f.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0057a f1769f = new C0057a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.ui.info.d f1770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap f1771e;

    /* JADX INFO: renamed from: animebestapp.com.ui.info.e.b.a$a, reason: collision with other inner class name */
    public static final class C0057a {
        private C0057a() {
        }

        public /* synthetic */ C0057a(g.p.b.d dVar) {
            this();
        }

        public final a a(Anime anime) {
            g.p.b.f.b(anime, "anime");
            a aVar = new a();
            aVar.setArguments(new Bundle());
            Bundle arguments = aVar.getArguments();
            if (arguments != null) {
                arguments.putString("player", new Gson().toJson(anime));
                return aVar;
            }
            g.p.b.f.a();
            throw null;
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            animebestapp.com.ui.info.e.b.b.a(a.a(a.this), 1, false, 2, null);
        }
    }

    static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            animebestapp.com.ui.info.e.b.b.a(a.a(a.this), 0, false, 2, null);
        }
    }

    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.a(a.this).f();
        }
    }

    static final class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.a(a.this).e();
        }
    }

    public static final class f implements TextWatcher {
        f() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            g.p.b.f.b(charSequence, MimeTypes.BASE_TYPE_TEXT);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            g.p.b.f.b(charSequence, MimeTypes.BASE_TYPE_TEXT);
            a.a(a.this).a(charSequence);
        }
    }

    static final class g implements TextView.OnEditorActionListener {
        g() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            if (i2 != 3 && i2 != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                return false;
            }
            if (keyEvent != null && keyEvent.isShiftPressed()) {
                return false;
            }
            animebestapp.com.utils.j jVar = animebestapp.com.utils.j.f2139a;
            b.k.a.e activity = a.this.getActivity();
            if (activity == null) {
                g.p.b.f.a();
                throw null;
            }
            g.p.b.f.a((Object) activity, "activity!!");
            jVar.a(activity);
            return true;
        }
    }

    public static final class h implements animebestapp.com.ui.a.f.c {
        h() {
        }

        @Override // animebestapp.com.ui.a.f.c
        public void a(int i2, animebestapp.com.models.d dVar) {
            a.a(a.this).a(i2);
        }
    }

    static final class i implements DialogInterface.OnMultiChoiceClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g.p.b.h f1779a;

        i(g.p.b.h hVar) {
            this.f1779a = hVar;
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public final void onClick(DialogInterface dialogInterface, int i2, boolean z) {
            this.f1779a.f4388b = z;
        }
    }

    static final class j implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final j f1780b = new j();

        j() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
        }
    }

    static final class k implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g.p.b.h f1782c;

        k(g.p.b.h hVar) {
            this.f1782c = hVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            a.a(a.this).a(this.f1782c.f4388b);
        }
    }

    static final class l implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g.p.b.h f1784c;

        l(g.p.b.h hVar) {
            this.f1784c = hVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            a.a(a.this).b(this.f1784c.f4388b);
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.info.e.b.b a(a aVar) {
        return (animebestapp.com.ui.info.e.b.b) aVar.f3348c;
    }

    private final void q() {
        ((RadioButton) f(animebestapp.com.a.btnWeb)).setOnClickListener(new b());
        ((RadioButton) f(animebestapp.com.a.btnNative)).setOnClickListener(new c());
        ((Button) f(animebestapp.com.a.btnNewPlayer)).setOnClickListener(new d());
        ((Button) f(animebestapp.com.a.btn1080p)).setOnClickListener(new e());
        ((EditText) f(animebestapp.com.a.etSearch)).addTextChangedListener(new f());
        ((EditText) f(animebestapp.com.a.etSearch)).setOnEditorActionListener(new g());
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void a(d.a aVar) {
        g.p.b.f.b(aVar, "state");
        Button button = (Button) f(animebestapp.com.a.btn1080p);
        g.p.b.f.a((Object) button, "btn1080p");
        button.setVisibility(aVar.e() ? 0 : 8);
        Button button2 = (Button) f(animebestapp.com.a.btnNewPlayer);
        g.p.b.f.a((Object) button2, "btnNewPlayer");
        button2.setVisibility(aVar.f() ? 0 : 8);
        RadioGroup radioGroup = (RadioGroup) f(animebestapp.com.a.rgPlayer);
        if (radioGroup != null) {
            radioGroup.setVisibility(aVar.g() ? 0 : 8);
        }
        ((RadioGroup) f(animebestapp.com.a.rgPlayer)).check(aVar.b() == 1 ? R.id.btnWeb : R.id.btnNative);
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void a(String str, Anime anime, int i2) {
        g.p.b.f.b(str, "f");
        g.p.b.f.b(anime, "anime");
        startActivity(new Intent(getContext(), (Class<?>) ExoPlayerActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, str).putExtra("position", i2).putExtra("anime", new Gson().toJson(anime)));
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void a(String str, boolean z) {
        g.p.b.f.b(str, "value");
        startActivity(new Intent(getContext(), (Class<?>) NewPlayerActivity.class).putExtra(ImagesContract.URL, str).putExtra("frame", z));
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void a(LinkedHashMap<String, String> linkedHashMap, int i2) {
        g.p.b.f.b(linkedHashMap, "series");
        this.f1770d = new animebestapp.com.ui.info.d(linkedHashMap, new h());
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView2, "rvList");
        recyclerView2.setAdapter(this.f1770d);
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void b(String str) {
        g.p.b.f.b(str, "value");
        startActivity(new Intent(getContext(), (Class<?>) PlayerActivity.class).putExtra(ImagesContract.URL, str));
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void e(int i2) {
        animebestapp.com.ui.info.d dVar = this.f1770d;
        if (dVar != null) {
            dVar.a(i2);
        }
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView, "rvList");
        RecyclerView.g adapter = recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView2, "rvList");
        RecyclerView.o layoutManager = recyclerView2.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            layoutManager = null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        if (linearLayoutManager != null) {
            linearLayoutManager.f(i2, 0);
        }
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void e(String str) {
        g.p.b.f.b(str, "value");
        Context context = getContext();
        if (context != null) {
            startActivityForResult(new Intent(context, (Class<?>) FunnyActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, str), 5765);
        } else {
            g.p.b.f.a();
            throw null;
        }
    }

    public View f(int i2) {
        if (this.f1771e == null) {
            this.f1771e = new HashMap();
        }
        View view = (View) this.f1771e.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f1771e.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // animebestapp.com.ui.info.e.b.d
    public void i() {
        g.p.b.h hVar = new g.p.b.h();
        hVar.f4388b = false;
        Context context = getContext();
        if (context == null) {
            g.p.b.f.a();
            throw null;
        }
        c.a aVar = new c.a(context, R.style.AppThemeDialog);
        aVar.b("Выбирите плеер для воспроизведения");
        aVar.a(new String[]{"Запомнить выбор"}, new boolean[1], new i(hVar));
        aVar.c("Отмена", j.f1780b);
        aVar.b("Внутренний", new k(hVar));
        aVar.a("Веб-плеер", new l(hVar));
        aVar.a(false);
        aVar.c();
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.info.e.b.b l() {
        Gson gson = new Gson();
        Bundle arguments = getArguments();
        if (arguments == null) {
            g.p.b.f.a();
            throw null;
        }
        Object objFromJson = gson.fromJson(arguments.getString("player"), (Class<Object>) Anime.class);
        g.p.b.f.a(objFromJson, "Gson().fromJson(argument…yer\"), Anime::class.java)");
        return new animebestapp.com.ui.info.e.b.b((Anime) objFromJson);
    }

    @Override // b.k.a.d
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 5765) {
            ((animebestapp.com.ui.info.e.b.b) this.f3348c).g();
        }
    }

    @Override // animebestapp.com.ui.a.f.b
    public boolean onBackPressed() {
        return false;
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        g.p.b.f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_info_player, viewGroup, false);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onDestroyView() {
        this.f1770d = null;
        super.onDestroyView();
        p();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        g.p.b.f.b(view, "view");
        super.onViewCreated(view, bundle);
        q();
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f1771e;
        if (map != null) {
            map.clear();
        }
    }
}
