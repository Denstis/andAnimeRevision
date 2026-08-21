package animebestapp.com.ui.nav.h.e;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.a.d;
import animebestapp.com.ui.info.InfoActivity;
import animebestapp.com.ui.nav.NavActivity;
import b.k.a.i;
import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<animebestapp.com.ui.nav.h.e.d, animebestapp.com.ui.nav.h.e.b> implements animebestapp.com.ui.a.f.d, animebestapp.com.ui.a.f.b, animebestapp.com.ui.a.f.c, animebestapp.com.ui.nav.h.e.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0086a f2080g = new C0086a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.ui.a.d f2081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f2082e = new f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap f2083f;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.e.a$a, reason: collision with other inner class name */
    public static final class C0086a {
        private C0086a() {
        }

        public /* synthetic */ C0086a(g.p.b.d dVar) {
            this();
        }

        public final a a() {
            return new a();
        }
    }

    public static final class b extends GridLayoutManager.c {
        b() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i2) {
            if (a.a(a.this).getItemViewType(i2) != 0) {
                return 1;
            }
            Resources resources = a.this.getResources();
            g.p.b.f.a((Object) resources, "resources");
            return resources.getConfiguration().orientation == 1 ? 2 : 4;
        }
    }

    static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.k.a.e activity = a.this.getActivity();
            if (activity == null) {
                g.p.b.f.a();
                throw null;
            }
            g.p.b.f.a((Object) activity, "activity!!");
            ((EditText) activity.findViewById(animebestapp.com.a.etSearch)).setText("");
        }
    }

    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.this.r();
        }
    }

    public static final class e implements TextView.OnEditorActionListener {
        e() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            g.p.b.f.b(textView, "v");
            if (i2 != 3) {
                return false;
            }
            a.a(a.this).a();
            animebestapp.com.ui.nav.h.e.b bVarB = a.b(a.this);
            RecyclerView recyclerView = (RecyclerView) a.this.f(animebestapp.com.a.rvList);
            g.p.b.f.a((Object) recyclerView, "rvList");
            b.k.a.e activity = a.this.getActivity();
            if (activity == null) {
                g.p.b.f.a();
                throw null;
            }
            g.p.b.f.a((Object) activity, "activity!!");
            EditText editText = (EditText) activity.findViewById(animebestapp.com.a.etSearch);
            g.p.b.f.a((Object) editText, "activity!!.etSearch");
            bVarB.a(recyclerView, editText.getText().toString());
            return true;
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
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            ImageButton imageButton;
            ImageButton imageButton2;
            ImageButton imageButton3;
            ImageButton imageButton4;
            g.p.b.f.b(charSequence, SearchIntents.EXTRA_QUERY);
            if (charSequence.length() > 0) {
                b.k.a.e activity = a.this.getActivity();
                if (activity != null && (imageButton4 = (ImageButton) activity.findViewById(animebestapp.com.a.btnSpeak)) != null) {
                    imageButton4.setVisibility(8);
                }
                b.k.a.e activity2 = a.this.getActivity();
                if (activity2 == null || (imageButton3 = (ImageButton) activity2.findViewById(animebestapp.com.a.btnClear)) == null) {
                    return;
                }
                imageButton3.setVisibility(0);
                return;
            }
            b.k.a.e activity3 = a.this.getActivity();
            if (activity3 != null && (imageButton2 = (ImageButton) activity3.findViewById(animebestapp.com.a.btnSpeak)) != null) {
                imageButton2.setVisibility(0);
            }
            b.k.a.e activity4 = a.this.getActivity();
            if (activity4 == null || (imageButton = (ImageButton) activity4.findViewById(animebestapp.com.a.btnClear)) == null) {
                return;
            }
            imageButton.setVisibility(8);
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.a.d a(a aVar) {
        animebestapp.com.ui.a.d dVar = aVar.f2081d;
        if (dVar != null) {
            return dVar;
        }
        g.p.b.f.c("adapter");
        throw null;
    }

    public static final /* synthetic */ animebestapp.com.ui.nav.h.e.b b(a aVar) {
        return (animebestapp.com.ui.nav.h.e.b) aVar.f3348c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.PROMPT", "Voice searching...");
        startActivityForResult(intent, 4001);
    }

    @Override // animebestapp.com.ui.a.f.c
    public void a(int i2, animebestapp.com.models.d dVar) {
        if (dVar == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.models.Anime");
        }
        startActivity(new Intent(getContext(), (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson((Anime) dVar)));
    }

    @Override // animebestapp.com.ui.nav.h.e.d
    public void a(List<Anime> list) {
        g.p.b.f.b(list, "items");
        animebestapp.com.ui.a.d dVar = this.f2081d;
        if (dVar != null) {
            dVar.a(list);
        } else {
            g.p.b.f.c("adapter");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        Boolean.valueOf(z);
        if (!isVisible()) {
            return false;
        }
        animebestapp.com.ui.a.d dVar = this.f2081d;
        if (dVar != null) {
            dVar.a(z);
            return false;
        }
        g.p.b.f.c("adapter");
        throw null;
    }

    public View f(int i2) {
        if (this.f2083f == null) {
            this.f2083f = new HashMap();
        }
        View view = (View) this.f2083f.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f2083f.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.h.e.b l() {
        return new animebestapp.com.ui.nav.h.e.b();
    }

    @Override // b.k.a.d
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 4001 && i3 == -1 && intent != null) {
            Log.d("TAG", "onActivityResult");
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            g.p.b.f.a((Object) stringArrayListExtra, "data.getStringArrayListE…izerIntent.EXTRA_RESULTS)");
            String str = (String) g.m.j.d((List) stringArrayListExtra);
            if (str != null) {
                b.k.a.e activity = getActivity();
                if (activity == null) {
                    g.p.b.f.a();
                    throw null;
                }
                g.p.b.f.a((Object) activity, "activity!!");
                ((EditText) activity.findViewById(animebestapp.com.a.etSearch)).setText(str);
                animebestapp.com.ui.a.d dVar = this.f2081d;
                if (dVar == null) {
                    g.p.b.f.c("adapter");
                    throw null;
                }
                dVar.a();
                animebestapp.com.ui.nav.h.e.b bVar = (animebestapp.com.ui.nav.h.e.b) this.f3348c;
                RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
                g.p.b.f.a((Object) recyclerView, "rvList");
                b.k.a.e activity2 = getActivity();
                if (activity2 == null) {
                    g.p.b.f.a();
                    throw null;
                }
                g.p.b.f.a((Object) activity2, "activity!!");
                EditText editText = (EditText) activity2.findViewById(animebestapp.com.a.etSearch);
                g.p.b.f.a((Object) editText, "activity!!.etSearch");
                bVar.a(recyclerView, editText.getText().toString());
            }
        }
    }

    @Override // animebestapp.com.ui.a.f.b
    public boolean onBackPressed() {
        b.k.a.e activity = getActivity();
        if (activity == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity, "activity!!");
        ImageButton imageButton = (ImageButton) activity.findViewById(animebestapp.com.a.btnSpeak);
        g.p.b.f.a((Object) imageButton, "activity!!.btnSpeak");
        imageButton.setVisibility(8);
        return q();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.f2081d = new animebestapp.com.ui.a.d(this);
        animebestapp.com.ui.a.d dVar = this.f2081d;
        if (dVar != null) {
            dVar.a(d.c.FINISH);
        } else {
            g.p.b.f.c("adapter");
            throw null;
        }
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        g.p.b.f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onDestroyView() {
        b.k.a.e activity = getActivity();
        if (activity == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity, "activity!!");
        ImageButton imageButton = (ImageButton) activity.findViewById(animebestapp.com.a.btnSpeak);
        g.p.b.f.a((Object) imageButton, "activity!!.btnSpeak");
        imageButton.setVisibility(8);
        b.k.a.e activity2 = getActivity();
        if (activity2 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity2, "activity!!");
        ((EditText) activity2.findViewById(animebestapp.com.a.etSearch)).removeTextChangedListener(this.f2082e);
        super.onDestroyView();
        p();
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onStop() {
        super.onStop();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        g.p.b.f.b(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        Resources resources = getResources();
        g.p.b.f.a((Object) resources, "resources");
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, resources.getConfiguration().orientation == 1 ? 2 : 4);
        gridLayoutManager.a(new b());
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(gridLayoutManager);
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView2, "rvList");
        animebestapp.com.ui.a.d dVar = this.f2081d;
        if (dVar == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        recyclerView2.setAdapter(dVar);
        b.k.a.e activity = getActivity();
        if (activity == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity, "activity!!");
        ImageButton imageButton = (ImageButton) activity.findViewById(animebestapp.com.a.btnSpeak);
        g.p.b.f.a((Object) imageButton, "activity!!.btnSpeak");
        imageButton.setVisibility(0);
        b.k.a.e activity2 = getActivity();
        if (activity2 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity2, "activity!!");
        ((EditText) activity2.findViewById(animebestapp.com.a.etSearch)).addTextChangedListener(this.f2082e);
        Context context2 = getContext();
        Object systemService = context2 != null ? context2.getSystemService("input_method") : null;
        if (systemService == null) {
            throw new j("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        b.k.a.e activity3 = getActivity();
        if (activity3 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity3, "activity!!");
        inputMethodManager.showSoftInput((EditText) activity3.findViewById(animebestapp.com.a.etSearch), 0);
        b.k.a.e activity4 = getActivity();
        if (activity4 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity4, "activity!!");
        EditText editText = (EditText) activity4.findViewById(animebestapp.com.a.etSearch);
        if (editText != null) {
            editText.requestFocus();
        }
        b.k.a.e activity5 = getActivity();
        if (activity5 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity5, "activity!!");
        ((ImageButton) activity5.findViewById(animebestapp.com.a.btnClear)).setOnClickListener(new c());
        b.k.a.e activity6 = getActivity();
        if (activity6 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity6, "activity!!");
        ((ImageButton) activity6.findViewById(animebestapp.com.a.btnSpeak)).setOnClickListener(new d());
        b.k.a.e activity7 = getActivity();
        if (activity7 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity7, "activity!!");
        ((EditText) activity7.findViewById(animebestapp.com.a.etSearch)).setOnEditorActionListener(new e());
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f2083f;
        if (map != null) {
            map.clear();
        }
    }

    public boolean q() {
        b.k.a.e activity = getActivity();
        if (activity == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity");
        }
        ((NavActivity) activity).d(false);
        i fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            fragmentManager.e();
            return true;
        }
        g.p.b.f.a();
        throw null;
    }
}
