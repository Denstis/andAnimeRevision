package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class k0 extends b.i.a.c implements View.OnClickListener {
    private final SearchView m;
    private final SearchableInfo n;
    private final Context o;
    private final WeakHashMap<String, Drawable.ConstantState> p;
    private final int q;
    private boolean r;
    private int s;
    private ColorStateList t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f597b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageView f598c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImageView f599d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImageView f600e;

        public a(View view) {
            this.f596a = (TextView) view.findViewById(R.id.text1);
            this.f597b = (TextView) view.findViewById(R.id.text2);
            this.f598c = (ImageView) view.findViewById(R.id.icon1);
            this.f599d = (ImageView) view.findViewById(R.id.icon2);
            this.f600e = (ImageView) view.findViewById(b.a.f.edit_query);
        }
    }

    public k0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.r = false;
        this.s = 1;
        this.u = -1;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = -1;
        this.z = -1;
        this.m = searchView;
        this.n = searchableInfo;
        this.q = searchView.getSuggestionCommitIconResId();
        this.o = context;
        this.p = weakHashMap;
    }

    private Drawable a(ComponentName componentName) {
        String string;
        ActivityInfo activityInfo;
        int iconResource;
        PackageManager packageManager = this.f2617e.getPackageManager();
        try {
            activityInfo = packageManager.getActivityInfo(componentName, 128);
            iconResource = activityInfo.getIconResource();
        } catch (PackageManager.NameNotFoundException e2) {
            string = e2.toString();
        }
        if (iconResource == 0) {
            return null;
        }
        Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
        if (drawable != null) {
            return drawable;
        }
        string = "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString();
        Log.w("SuggestionsAdapter", string);
        return null;
    }

    private Drawable a(String str) {
        Drawable.ConstantState constantState = this.p.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private static String a(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e2);
            return null;
        }
    }

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    private void a(ImageView imageView, Drawable drawable, int i2) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i2);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    private void a(String str, Drawable drawable) {
        if (drawable != null) {
            this.p.put(str, drawable.getConstantState());
        }
    }

    private Drawable b(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.p.containsKey(strFlattenToShortString)) {
            Drawable drawableA = a(componentName);
            this.p.put(strFlattenToShortString, drawableA != null ? drawableA.getConstantState() : null);
            return drawableA;
        }
        Drawable.ConstantState constantState = this.p.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.o.getResources());
    }

    private Drawable b(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return a(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.o.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(inputStreamOpenInputStream, null);
            } finally {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e2) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
                }
            }
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    private Drawable b(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int i2 = Integer.parseInt(str);
            String str2 = "android.resource://" + this.o.getPackageName() + "/" + i2;
            Drawable drawableA = a(str2);
            if (drawableA != null) {
                return drawableA;
            }
            Drawable drawableC = androidx.core.content.a.c(this.o, i2);
            a(str2, drawableC);
            return drawableC;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableA2 = a(str);
            if (drawableA2 != null) {
                return drawableA2;
            }
            Drawable drawableB = b(Uri.parse(str));
            a(str, drawableB);
            return drawableB;
        }
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.t == null) {
            TypedValue typedValue = new TypedValue();
            this.f2617e.getTheme().resolveAttribute(b.a.a.textColorSearchUrl, typedValue, true);
            this.t = this.f2617e.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.t, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable d(Cursor cursor) {
        Drawable drawableB = b(this.n.getSearchActivity());
        return drawableB != null ? drawableB : this.f2617e.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable e(Cursor cursor) {
        int i2 = this.x;
        if (i2 == -1) {
            return null;
        }
        Drawable drawableB = b(cursor.getString(i2));
        return drawableB != null ? drawableB : d(cursor);
    }

    private Drawable f(Cursor cursor) {
        int i2 = this.y;
        if (i2 == -1) {
            return null;
        }
        return b(cursor.getString(i2));
    }

    private void g(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    Cursor a(SearchableInfo searchableInfo, String str, int i2) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i2 > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i2));
        }
        return this.f2617e.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // b.i.a.b.a
    public Cursor a(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        if (this.m.getVisibility() == 0 && this.m.getWindowVisibility() == 0) {
            try {
                Cursor cursorA = a(this.n, string, 50);
                if (cursorA != null) {
                    cursorA.getCount();
                    return cursorA;
                }
            } catch (RuntimeException e2) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e2);
            }
        }
        return null;
    }

    Drawable a(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f2617e.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    public void a(int i2) {
        this.s = i2;
    }

    @Override // b.i.a.a, b.i.a.b.a
    public void a(Cursor cursor) {
        if (this.r) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.u = cursor.getColumnIndex("suggest_text_1");
                this.v = cursor.getColumnIndex("suggest_text_2");
                this.w = cursor.getColumnIndex("suggest_text_2_url");
                this.x = cursor.getColumnIndex("suggest_icon_1");
                this.y = cursor.getColumnIndex("suggest_icon_2");
                this.z = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e2);
        }
    }

    @Override // b.i.a.a
    public void a(View view, Context context, Cursor cursor) {
        a aVar = (a) view.getTag();
        int i2 = this.z;
        int i3 = i2 != -1 ? cursor.getInt(i2) : 0;
        if (aVar.f596a != null) {
            a(aVar.f596a, a(cursor, this.u));
        }
        if (aVar.f597b != null) {
            String strA = a(cursor, this.w);
            CharSequence charSequenceB = strA != null ? b((CharSequence) strA) : a(cursor, this.v);
            if (TextUtils.isEmpty(charSequenceB)) {
                TextView textView = aVar.f596a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f596a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f596a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f596a.setMaxLines(1);
                }
            }
            a(aVar.f597b, charSequenceB);
        }
        ImageView imageView = aVar.f598c;
        if (imageView != null) {
            a(imageView, e(cursor), 4);
        }
        ImageView imageView2 = aVar.f599d;
        if (imageView2 != null) {
            a(imageView2, f(cursor), 8);
        }
        int i4 = this.s;
        if (i4 != 2 && (i4 != 1 || (i3 & 1) == 0)) {
            aVar.f600e.setVisibility(8);
            return;
        }
        aVar.f600e.setVisibility(0);
        aVar.f600e.setTag(aVar.f596a.getText());
        aVar.f600e.setOnClickListener(this);
    }

    @Override // b.i.a.c, b.i.a.a
    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewB = super.b(context, cursor, viewGroup);
        viewB.setTag(new a(viewB));
        ((ImageView) viewB.findViewById(b.a.f.edit_query)).setImageResource(this.q);
        return viewB;
    }

    @Override // b.i.a.a, b.i.a.b.a
    public CharSequence b(Cursor cursor) {
        String strA;
        String strA2;
        if (cursor == null) {
            return null;
        }
        String strA3 = a(cursor, "suggest_intent_query");
        if (strA3 != null) {
            return strA3;
        }
        if (this.n.shouldRewriteQueryFromData() && (strA2 = a(cursor, "suggest_intent_data")) != null) {
            return strA2;
        }
        if (!this.n.shouldRewriteQueryFromText() || (strA = a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strA;
    }

    @Override // b.i.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewA = a(this.f2617e, this.f2616d, viewGroup);
            if (viewA != null) {
                ((a) viewA.getTag()).f596a.setText(e2.toString());
            }
            return viewA;
        }
    }

    @Override // b.i.a.a, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewB = b(this.f2617e, this.f2616d, viewGroup);
            if (viewB != null) {
                ((a) viewB.getTag()).f596a.setText(e2.toString());
            }
            return viewB;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        g(a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        g(a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.m.a((CharSequence) tag);
        }
    }
}
