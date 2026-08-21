package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.gms.actions.SearchIntents;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements b.a.n.c {
    static final k c0 = new k();
    private View.OnClickListener A;
    private boolean B;
    private boolean C;
    b.i.a.a D;
    private boolean E;
    private CharSequence F;
    private boolean G;
    private boolean H;
    private int I;
    private boolean J;
    private CharSequence K;
    private CharSequence L;
    private boolean M;
    private int N;
    SearchableInfo O;
    private Bundle P;
    private final Runnable Q;
    private Runnable R;
    private final WeakHashMap<String, Drawable.ConstantState> S;
    private final View.OnClickListener T;
    View.OnKeyListener U;
    private final TextView.OnEditorActionListener V;
    private final AdapterView.OnItemClickListener W;
    private final AdapterView.OnItemSelectedListener a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final SearchAutoComplete f419b;
    private TextWatcher b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ImageView f423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ImageView f424g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final ImageView f425h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final ImageView f426i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View f427j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private p f428k;
    private Rect l;
    private Rect m;
    private int[] n;
    private int[] o;
    private final ImageView p;
    private final Drawable q;
    private final int r;
    private final int s;
    private final Intent t;
    private final Intent u;
    private final CharSequence v;
    private m w;
    private l x;
    View.OnFocusChangeListener y;
    private n z;

    public static class SearchAutoComplete extends androidx.appcompat.widget.d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f429e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private SearchView f430f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f431g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final Runnable f432h;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.b();
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, b.a.a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.f432h = new a();
            this.f429e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i3 = configuration.screenHeightDp;
            if (i2 >= 960 && i3 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i2 >= 600) {
                return PsExtractor.AUDIO_STREAM;
            }
            if (i2 < 640 || i3 < 480) {
                return 160;
            }
            return PsExtractor.AUDIO_STREAM;
        }

        boolean a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        void b() {
            if (this.f431g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f431g = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f429e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f431g) {
                removeCallbacks(this.f432h);
                post(this.f432h);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i2, Rect rect) {
            super.onFocusChanged(z, i2, rect);
            this.f430f.i();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f430f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f430f.hasFocus() && getVisibility() == 0) {
                this.f431g = true;
                if (SearchView.a(getContext())) {
                    SearchView.c0.a(this, true);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f431g = false;
                removeCallbacks(this.f432h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f431g = true;
                    return;
                }
                this.f431g = false;
                removeCallbacks(this.f432h);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f430f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f429e = i2;
        }
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            SearchView.this.b(charSequence);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.k();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.i.a.a aVar = SearchView.this.D;
            if (aVar == null || !(aVar instanceof k0)) {
                return;
            }
            aVar.a((Cursor) null);
        }
    }

    class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.y;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    class e implements View.OnLayoutChangeListener {
        e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            SearchView.this.c();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f423f) {
                searchView.g();
                return;
            }
            if (view == searchView.f425h) {
                searchView.f();
                return;
            }
            if (view == searchView.f424g) {
                searchView.h();
            } else if (view == searchView.f426i) {
                searchView.j();
            } else if (view == searchView.f419b) {
                searchView.d();
            }
        }
    }

    class g implements View.OnKeyListener {
        g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.O == null) {
                return false;
            }
            if (searchView.f419b.isPopupShowing() && SearchView.this.f419b.getListSelection() != -1) {
                return SearchView.this.a(view, i2, keyEvent);
            }
            if (SearchView.this.f419b.a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.a(0, (String) null, searchView2.f419b.getText().toString());
            return true;
        }
    }

    class h implements TextView.OnEditorActionListener {
        h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            SearchView.this.h();
            return true;
        }
    }

    class i implements AdapterView.OnItemClickListener {
        i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            SearchView.this.a(i2, 0, (String) null);
        }
    }

    class j implements AdapterView.OnItemSelectedListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
            SearchView.this.a(i2);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Method f444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Method f446c;

        k() {
            try {
                this.f444a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f444a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                this.f445b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f445b.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                this.f446c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f446c.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f445b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            Method method = this.f446c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f444a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }
    }

    public interface l {
        boolean a();
    }

    public interface m {
        boolean a(String str);

        boolean b(String str);
    }

    public interface n {
        boolean a(int i2);

        boolean b(int i2);
    }

    static class o extends b.j.a.a {
        public static final Parcelable.Creator<o> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f447b;

        static class a implements Parcelable.ClassLoaderCreator<o> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public o createFromParcel(Parcel parcel) {
                return new o(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public o createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new o(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public o[] newArray(int i2) {
                return new o[i2];
            }
        }

        public o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f447b = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        o(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f447b + "}";
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Boolean.valueOf(this.f447b));
        }
    }

    private static class p extends TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Rect f450c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Rect f451d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f452e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f453f;

        public p(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f452e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f449b = new Rect();
            this.f451d = new Rect();
            this.f450c = new Rect();
            a(rect, rect2);
            this.f448a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f449b.set(rect);
            this.f451d.set(rect);
            Rect rect3 = this.f451d;
            int i2 = this.f452e;
            rect3.inset(-i2, -i2);
            this.f450c.set(rect2);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
        @Override // android.view.TouchDelegate
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onTouchEvent(android.view.MotionEvent r8) {
            /*
                r7 = this;
                float r0 = r8.getX()
                int r0 = (int) r0
                float r1 = r8.getY()
                int r1 = (int) r1
                int r2 = r8.getAction()
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L2e
                if (r2 == r4) goto L20
                if (r2 == r3) goto L20
                r6 = 3
                if (r2 == r6) goto L1b
                goto L3a
            L1b:
                boolean r2 = r7.f453f
                r7.f453f = r5
                goto L3b
            L20:
                boolean r2 = r7.f453f
                if (r2 == 0) goto L3b
                android.graphics.Rect r6 = r7.f451d
                boolean r6 = r6.contains(r0, r1)
                if (r6 != 0) goto L3b
                r4 = 0
                goto L3b
            L2e:
                android.graphics.Rect r2 = r7.f449b
                boolean r2 = r2.contains(r0, r1)
                if (r2 == 0) goto L3a
                r7.f453f = r4
                r2 = 1
                goto L3b
            L3a:
                r2 = 0
            L3b:
                if (r2 == 0) goto L6a
                if (r4 == 0) goto L57
                android.graphics.Rect r2 = r7.f450c
                boolean r2 = r2.contains(r0, r1)
                if (r2 != 0) goto L57
                android.view.View r0 = r7.f448a
                int r0 = r0.getWidth()
                int r0 = r0 / r3
                float r0 = (float) r0
                android.view.View r1 = r7.f448a
                int r1 = r1.getHeight()
                int r1 = r1 / r3
                goto L60
            L57:
                android.graphics.Rect r2 = r7.f450c
                int r3 = r2.left
                int r0 = r0 - r3
                float r0 = (float) r0
                int r2 = r2.top
                int r1 = r1 - r2
            L60:
                float r1 = (float) r1
                r8.setLocation(r0, r1)
                android.view.View r0 = r7.f448a
                boolean r5 = r0.dispatchTouchEvent(r8)
            L6a:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.p.onTouchEvent(android.view.MotionEvent):boolean");
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.l = new Rect();
        this.m = new Rect();
        this.n = new int[2];
        this.o = new int[2];
        this.Q = new b();
        this.R = new c();
        this.S = new WeakHashMap<>();
        this.T = new f();
        this.U = new g();
        this.V = new h();
        this.W = new i();
        this.a0 = new j();
        this.b0 = new a();
        q0 q0VarA = q0.a(context, attributeSet, b.a.j.SearchView, i2, 0);
        LayoutInflater.from(context).inflate(q0VarA.g(b.a.j.SearchView_layout, b.a.g.abc_search_view), (ViewGroup) this, true);
        this.f419b = (SearchAutoComplete) findViewById(b.a.f.search_src_text);
        this.f419b.setSearchView(this);
        this.f420c = findViewById(b.a.f.search_edit_frame);
        this.f421d = findViewById(b.a.f.search_plate);
        this.f422e = findViewById(b.a.f.submit_area);
        this.f423f = (ImageView) findViewById(b.a.f.search_button);
        this.f424g = (ImageView) findViewById(b.a.f.search_go_btn);
        this.f425h = (ImageView) findViewById(b.a.f.search_close_btn);
        this.f426i = (ImageView) findViewById(b.a.f.search_voice_btn);
        this.p = (ImageView) findViewById(b.a.f.search_mag_icon);
        b.h.o.s.a(this.f421d, q0VarA.b(b.a.j.SearchView_queryBackground));
        b.h.o.s.a(this.f422e, q0VarA.b(b.a.j.SearchView_submitBackground));
        this.f423f.setImageDrawable(q0VarA.b(b.a.j.SearchView_searchIcon));
        this.f424g.setImageDrawable(q0VarA.b(b.a.j.SearchView_goIcon));
        this.f425h.setImageDrawable(q0VarA.b(b.a.j.SearchView_closeIcon));
        this.f426i.setImageDrawable(q0VarA.b(b.a.j.SearchView_voiceIcon));
        this.p.setImageDrawable(q0VarA.b(b.a.j.SearchView_searchIcon));
        this.q = q0VarA.b(b.a.j.SearchView_searchHintIcon);
        s0.a(this.f423f, getResources().getString(b.a.h.abc_searchview_description_search));
        this.r = q0VarA.g(b.a.j.SearchView_suggestionRowLayout, b.a.g.abc_search_dropdown_item_icons_2line);
        this.s = q0VarA.g(b.a.j.SearchView_commitIcon, 0);
        this.f423f.setOnClickListener(this.T);
        this.f425h.setOnClickListener(this.T);
        this.f424g.setOnClickListener(this.T);
        this.f426i.setOnClickListener(this.T);
        this.f419b.setOnClickListener(this.T);
        this.f419b.addTextChangedListener(this.b0);
        this.f419b.setOnEditorActionListener(this.V);
        this.f419b.setOnItemClickListener(this.W);
        this.f419b.setOnItemSelectedListener(this.a0);
        this.f419b.setOnKeyListener(this.U);
        this.f419b.setOnFocusChangeListener(new d());
        setIconifiedByDefault(q0VarA.a(b.a.j.SearchView_iconifiedByDefault, true));
        int iC = q0VarA.c(b.a.j.SearchView_android_maxWidth, -1);
        if (iC != -1) {
            setMaxWidth(iC);
        }
        this.v = q0VarA.e(b.a.j.SearchView_defaultQueryHint);
        this.F = q0VarA.e(b.a.j.SearchView_queryHint);
        int iD = q0VarA.d(b.a.j.SearchView_android_imeOptions, -1);
        if (iD != -1) {
            setImeOptions(iD);
        }
        int iD2 = q0VarA.d(b.a.j.SearchView_android_inputType, -1);
        if (iD2 != -1) {
            setInputType(iD2);
        }
        setFocusable(q0VarA.a(b.a.j.SearchView_android_focusable, true));
        q0VarA.a();
        this.t = new Intent("android.speech.action.WEB_SEARCH");
        this.t.addFlags(C.ENCODING_PCM_MU_LAW);
        this.t.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.u = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.u.addFlags(C.ENCODING_PCM_MU_LAW);
        this.f427j = findViewById(this.f419b.getDropDownAnchor());
        View view = this.f427j;
        if (view != null) {
            view.addOnLayoutChangeListener(new e());
        }
        b(this.B);
        q();
    }

    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.P;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent a(Cursor cursor, int i2, String str) {
        int position;
        String strA;
        try {
            String strA2 = k0.a(cursor, "suggest_intent_action");
            if (strA2 == null) {
                strA2 = this.O.getSuggestIntentAction();
            }
            if (strA2 == null) {
                strA2 = "android.intent.action.SEARCH";
            }
            String str2 = strA2;
            String strA3 = k0.a(cursor, "suggest_intent_data");
            if (strA3 == null) {
                strA3 = this.O.getSuggestIntentData();
            }
            if (strA3 != null && (strA = k0.a(cursor, "suggest_intent_data_id")) != null) {
                strA3 = strA3 + "/" + Uri.encode(strA);
            }
            return a(str2, strA3 == null ? null : Uri.parse(strA3), k0.a(cursor, "suggest_intent_extra_data"), k0.a(cursor, "suggest_intent_query"), i2, str);
        } catch (RuntimeException e2) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e2);
            return null;
        }
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.L);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.P;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.O.getSearchActivity());
        return intent;
    }

    private void a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e2) {
            Log.e("SearchView", "Failed launch activity: " + intent, e2);
        }
    }

    private void a(View view, Rect rect) {
        view.getLocationInWindow(this.n);
        getLocationInWindow(this.o);
        int[] iArr = this.n;
        int i2 = iArr[1];
        int[] iArr2 = this.o;
        int i3 = i2 - iArr2[1];
        int i4 = iArr[0] - iArr2[0];
        rect.set(i4, i3, view.getWidth() + i4, view.getHeight() + i3);
    }

    private void a(boolean z) {
        this.f424g.setVisibility((this.E && n() && hasFocus() && (z || !this.J)) ? 0 : 8);
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void b(int i2) {
        CharSequence charSequenceB;
        Editable text = this.f419b.getText();
        Cursor cursorA = this.D.a();
        if (cursorA == null) {
            return;
        }
        if (!cursorA.moveToPosition(i2) || (charSequenceB = this.D.b(cursorA)) == null) {
            setQuery(text);
        } else {
            setQuery(charSequenceB);
        }
    }

    private void b(boolean z) {
        this.C = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f419b.getText());
        this.f423f.setVisibility(i2);
        a(z2);
        this.f420c.setVisibility(z ? 8 : 0);
        this.p.setVisibility((this.p.getDrawable() == null || this.B) ? 8 : 0);
        p();
        c(!z2);
        s();
    }

    private boolean b(int i2, int i3, String str) {
        Cursor cursorA = this.D.a();
        if (cursorA == null || !cursorA.moveToPosition(i2)) {
            return false;
        }
        a(a(cursorA, i3, str));
        return true;
    }

    private CharSequence c(CharSequence charSequence) {
        if (!this.B || this.q == null) {
            return charSequence;
        }
        double textSize = this.f419b.getTextSize();
        Double.isNaN(textSize);
        int i2 = (int) (textSize * 1.25d);
        this.q.setBounds(0, 0, i2, i2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.q), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private void c(boolean z) {
        int i2;
        if (this.J && !e() && z) {
            i2 = 0;
            this.f424g.setVisibility(8);
        } else {
            i2 = 8;
        }
        this.f426i.setVisibility(i2);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(b.a.d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(b.a.d.abc_search_view_preferred_width);
    }

    private void l() {
        this.f419b.dismissDropDown();
    }

    private boolean m() {
        SearchableInfo searchableInfo = this.O;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.O.getVoiceSearchLaunchWebSearch()) {
            intent = this.t;
        } else if (this.O.getVoiceSearchLaunchRecognizer()) {
            intent = this.u;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, C.DEFAULT_BUFFER_SEGMENT_SIZE) == null) ? false : true;
    }

    private boolean n() {
        return (this.E || this.J) && !e();
    }

    private void o() {
        post(this.Q);
    }

    private void p() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f419b.getText());
        if (!z2 && (!this.B || this.M)) {
            z = false;
        }
        this.f425h.setVisibility(z ? 0 : 8);
        Drawable drawable = this.f425h.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void q() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f419b;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(c(queryHint));
    }

    private void r() {
        this.f419b.setThreshold(this.O.getSuggestThreshold());
        this.f419b.setImeOptions(this.O.getImeOptions());
        int inputType = this.O.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.O.getSuggestAuthority() != null) {
                inputType = inputType | C.DEFAULT_BUFFER_SEGMENT_SIZE | 524288;
            }
        }
        this.f419b.setInputType(inputType);
        b.i.a.a aVar = this.D;
        if (aVar != null) {
            aVar.a((Cursor) null);
        }
        if (this.O.getSuggestAuthority() != null) {
            this.D = new k0(getContext(), this, this.O, this.S);
            this.f419b.setAdapter(this.D);
            ((k0) this.D).a(this.G ? 2 : 1);
        }
    }

    private void s() {
        this.f422e.setVisibility((n() && (this.f424g.getVisibility() == 0 || this.f426i.getVisibility() == 0)) ? 0 : 8);
    }

    private void setQuery(CharSequence charSequence) {
        this.f419b.setText(charSequence);
        this.f419b.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // b.a.n.c
    public void a() {
        if (this.M) {
            return;
        }
        this.M = true;
        this.N = this.f419b.getImeOptions();
        this.f419b.setImeOptions(this.N | 33554432);
        this.f419b.setText("");
        setIconified(false);
    }

    void a(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", null, null, str2, i2, str));
    }

    void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void a(CharSequence charSequence, boolean z) {
        this.f419b.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f419b;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.L = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        h();
    }

    boolean a(int i2) {
        n nVar = this.z;
        if (nVar != null && nVar.a(i2)) {
            return false;
        }
        b(i2);
        return true;
    }

    boolean a(int i2, int i3, String str) {
        n nVar = this.z;
        if (nVar != null && nVar.b(i2)) {
            return false;
        }
        b(i2, 0, null);
        this.f419b.setImeVisibility(false);
        l();
        return true;
    }

    boolean a(View view, int i2, KeyEvent keyEvent) {
        if (this.O != null && this.D != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return a(this.f419b.getListSelection(), 0, (String) null);
            }
            if (i2 == 21 || i2 == 22) {
                this.f419b.setSelection(i2 == 21 ? 0 : this.f419b.length());
                this.f419b.setListSelection(0);
                this.f419b.clearListSelection();
                c0.a(this.f419b, true);
                return true;
            }
            if (i2 != 19 || this.f419b.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    @Override // b.a.n.c
    public void b() {
        a("", false);
        clearFocus();
        b(true);
        this.f419b.setImeOptions(this.N);
        this.M = false;
    }

    void b(CharSequence charSequence) {
        Editable text = this.f419b.getText();
        this.L = text;
        boolean z = !TextUtils.isEmpty(text);
        a(z);
        c(!z);
        p();
        s();
        if (this.w != null && !TextUtils.equals(charSequence, this.K)) {
            this.w.a(charSequence.toString());
        }
        this.K = charSequence.toString();
    }

    void c() {
        if (this.f427j.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f421d.getPaddingLeft();
            Rect rect = new Rect();
            boolean zA = w0.a(this);
            int dimensionPixelSize = this.B ? resources.getDimensionPixelSize(b.a.d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(b.a.d.abc_dropdownitem_text_padding_left) : 0;
            this.f419b.getDropDownBackground().getPadding(rect);
            int i2 = rect.left;
            this.f419b.setDropDownHorizontalOffset(zA ? -i2 : paddingLeft - (i2 + dimensionPixelSize));
            this.f419b.setDropDownWidth((((this.f427j.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.H = true;
        super.clearFocus();
        this.f419b.clearFocus();
        this.f419b.setImeVisibility(false);
        this.H = false;
    }

    void d() {
        c0.b(this.f419b);
        c0.a(this.f419b);
    }

    public boolean e() {
        return this.C;
    }

    void f() {
        if (!TextUtils.isEmpty(this.f419b.getText())) {
            this.f419b.setText("");
            this.f419b.requestFocus();
            this.f419b.setImeVisibility(true);
        } else if (this.B) {
            l lVar = this.x;
            if (lVar == null || !lVar.a()) {
                clearFocus();
                b(true);
            }
        }
    }

    void g() {
        b(false);
        this.f419b.requestFocus();
        this.f419b.setImeVisibility(true);
        View.OnClickListener onClickListener = this.A;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public int getImeOptions() {
        return this.f419b.getImeOptions();
    }

    public int getInputType() {
        return this.f419b.getInputType();
    }

    public int getMaxWidth() {
        return this.I;
    }

    public CharSequence getQuery() {
        return this.f419b.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.F;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.O;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.v : getContext().getText(this.O.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.s;
    }

    int getSuggestionRowLayout() {
        return this.r;
    }

    public b.i.a.a getSuggestionsAdapter() {
        return this.D;
    }

    void h() {
        Editable text = this.f419b.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        m mVar = this.w;
        if (mVar == null || !mVar.b(text.toString())) {
            if (this.O != null) {
                a(0, (String) null, text.toString());
            }
            this.f419b.setImeVisibility(false);
            l();
        }
    }

    void i() {
        b(e());
        o();
        if (this.f419b.hasFocus()) {
            d();
        }
    }

    void j() {
        Intent intentA;
        SearchableInfo searchableInfo = this.O;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                intentA = b(this.t, searchableInfo);
            } else if (!searchableInfo.getVoiceSearchLaunchRecognizer()) {
                return;
            } else {
                intentA = a(this.u, searchableInfo);
            }
            getContext().startActivity(intentA);
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    void k() {
        int[] iArr = this.f419b.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f421d.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f422e.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.Q);
        post(this.R);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            a(this.f419b, this.l);
            Rect rect = this.m;
            Rect rect2 = this.l;
            rect.set(rect2.left, 0, rect2.right, i5 - i3);
            p pVar = this.f428k;
            if (pVar != null) {
                pVar.a(this.m, this.l);
            } else {
                this.f428k = new p(this.m, this.l, this.f419b);
                setTouchDelegate(this.f428k);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r4, int r5) {
        /*
            r3 = this;
            boolean r0 = r3.e()
            if (r0 == 0) goto La
            super.onMeasure(r4, r5)
            return
        La:
            int r0 = android.view.View.MeasureSpec.getMode(r4)
            int r4 = android.view.View.MeasureSpec.getSize(r4)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L2c
            if (r0 == 0) goto L22
            if (r0 == r2) goto L1d
            goto L39
        L1d:
            int r0 = r3.I
            if (r0 <= 0) goto L39
            goto L30
        L22:
            int r4 = r3.I
            if (r4 <= 0) goto L27
            goto L39
        L27:
            int r4 = r3.getPreferredWidth()
            goto L39
        L2c:
            int r0 = r3.I
            if (r0 <= 0) goto L31
        L30:
            goto L35
        L31:
            int r0 = r3.getPreferredWidth()
        L35:
            int r4 = java.lang.Math.min(r0, r4)
        L39:
            int r0 = android.view.View.MeasureSpec.getMode(r5)
            int r5 = android.view.View.MeasureSpec.getSize(r5)
            if (r0 == r1) goto L4b
            if (r0 == 0) goto L46
            goto L53
        L46:
            int r5 = r3.getPreferredHeight()
            goto L53
        L4b:
            int r0 = r3.getPreferredHeight()
            int r5 = java.lang.Math.min(r0, r5)
        L53:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r2)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r2)
            super.onMeasure(r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o oVar = (o) parcelable;
        super.onRestoreInstanceState(oVar.getSuperState());
        b(oVar.f447b);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        o oVar = new o(super.onSaveInstanceState());
        oVar.f447b = e();
        return oVar;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.H || !isFocusable()) {
            return false;
        }
        if (e()) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.f419b.requestFocus(i2, rect);
        if (zRequestFocus) {
            b(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.P = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            f();
        } else {
            g();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.B == z) {
            return;
        }
        this.B = z;
        b(z);
        q();
    }

    public void setImeOptions(int i2) {
        this.f419b.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.f419b.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.I = i2;
        requestLayout();
    }

    public void setOnCloseListener(l lVar) {
        this.x = lVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.y = onFocusChangeListener;
    }

    public void setOnQueryTextListener(m mVar) {
        this.w = mVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.A = onClickListener;
    }

    public void setOnSuggestionListener(n nVar) {
        this.z = nVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.F = charSequence;
        q();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.G = z;
        b.i.a.a aVar = this.D;
        if (aVar instanceof k0) {
            ((k0) aVar).a(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.O = searchableInfo;
        if (this.O != null) {
            r();
            q();
        }
        this.J = m();
        if (this.J) {
            this.f419b.setPrivateImeOptions("nm");
        }
        b(e());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.E = z;
        b(e());
    }

    public void setSuggestionsAdapter(b.i.a.a aVar) {
        this.D = aVar;
        this.f419b.setAdapter(this.D);
    }
}
