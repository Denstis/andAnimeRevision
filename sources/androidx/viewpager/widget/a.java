package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DataSetObservable f1455a = new DataSetObservable();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DataSetObserver f1456b;

    public abstract int a();

    public int a(Object obj) {
        return -1;
    }

    public CharSequence a(int i2) {
        return null;
    }

    public abstract Object a(ViewGroup viewGroup, int i2);

    public void a(DataSetObserver dataSetObserver) {
        this.f1455a.registerObserver(dataSetObserver);
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Deprecated
    public void a(View view) {
    }

    @Deprecated
    public void a(View view, int i2, Object obj) {
    }

    public void a(ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    public abstract void a(ViewGroup viewGroup, int i2, Object obj);

    public abstract boolean a(View view, Object obj);

    public float b(int i2) {
        return 1.0f;
    }

    public void b() {
        synchronized (this) {
            if (this.f1456b != null) {
                this.f1456b.onChanged();
            }
        }
        this.f1455a.notifyChanged();
    }

    void b(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f1456b = dataSetObserver;
        }
    }

    @Deprecated
    public void b(View view) {
    }

    public void b(ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    public void b(ViewGroup viewGroup, int i2, Object obj) {
        a((View) viewGroup, i2, obj);
    }

    public Parcelable c() {
        return null;
    }

    public void c(DataSetObserver dataSetObserver) {
        this.f1455a.unregisterObserver(dataSetObserver);
    }
}
