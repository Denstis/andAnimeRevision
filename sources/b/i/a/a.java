package b.i.a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import b.i.a.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f2614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f2615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Cursor f2616d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Context f2617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f2618f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected C0109a f2619g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected DataSetObserver f2620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected b.i.a.b f2621i;

    /* JADX INFO: renamed from: b.i.a.a$a, reason: collision with other inner class name */
    private class C0109a extends ContentObserver {
        C0109a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            a.this.b();
        }
    }

    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f2614b = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f2614b = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    @Override // b.i.a.b.a
    public Cursor a() {
        return this.f2616d;
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    void a(Context context, Cursor cursor, int i2) {
        b bVar;
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f2615c = true;
        } else {
            this.f2615c = false;
        }
        boolean z = cursor != null;
        this.f2616d = cursor;
        this.f2614b = z;
        this.f2617e = context;
        this.f2618f = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i2 & 2) == 2) {
            this.f2619g = new C0109a();
            bVar = new b();
        } else {
            bVar = null;
            this.f2619g = null;
        }
        this.f2620h = bVar;
        if (z) {
            C0109a c0109a = this.f2619g;
            if (c0109a != null) {
                cursor.registerContentObserver(c0109a);
            }
            DataSetObserver dataSetObserver = this.f2620h;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public void a(Cursor cursor) {
        Cursor cursorC = c(cursor);
        if (cursorC != null) {
            cursorC.close();
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public abstract View b(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract CharSequence b(Cursor cursor);

    protected void b() {
        Cursor cursor;
        if (!this.f2615c || (cursor = this.f2616d) == null || cursor.isClosed()) {
            return;
        }
        this.f2614b = this.f2616d.requery();
    }

    public Cursor c(Cursor cursor) {
        Cursor cursor2 = this.f2616d;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0109a c0109a = this.f2619g;
            if (c0109a != null) {
                cursor2.unregisterContentObserver(c0109a);
            }
            DataSetObserver dataSetObserver = this.f2620h;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f2616d = cursor;
        if (cursor != null) {
            C0109a c0109a2 = this.f2619g;
            if (c0109a2 != null) {
                cursor.registerContentObserver(c0109a2);
            }
            DataSetObserver dataSetObserver2 = this.f2620h;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f2618f = cursor.getColumnIndexOrThrow("_id");
            this.f2614b = true;
            notifyDataSetChanged();
        } else {
            this.f2618f = -1;
            this.f2614b = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f2614b || (cursor = this.f2616d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f2614b) {
            return null;
        }
        this.f2616d.moveToPosition(i2);
        if (view == null) {
            view = a(this.f2617e, this.f2616d, viewGroup);
        }
        a(view, this.f2617e, this.f2616d);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f2621i == null) {
            this.f2621i = new b.i.a.b(this);
        }
        return this.f2621i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        Cursor cursor;
        if (!this.f2614b || (cursor = this.f2616d) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.f2616d;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        Cursor cursor;
        if (this.f2614b && (cursor = this.f2616d) != null && cursor.moveToPosition(i2)) {
            return this.f2616d.getLong(this.f2618f);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f2614b) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f2616d.moveToPosition(i2)) {
            if (view == null) {
                view = b(this.f2617e, this.f2616d, viewGroup);
            }
            a(view, this.f2617e, this.f2616d);
            return view;
        }
        throw new IllegalStateException("couldn't move cursor to position " + i2);
    }
}
