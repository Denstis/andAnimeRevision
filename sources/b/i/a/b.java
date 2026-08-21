package b.i.a;

import android.database.Cursor;
import android.widget.Filter;

/* JADX INFO: loaded from: classes.dex */
class b extends Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f2624a;

    interface a {
        Cursor a();

        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence b(Cursor cursor);
    }

    b(a aVar) {
        this.f2624a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f2624a.b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorA = this.f2624a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorA != null) {
            filterResults.count = cursorA.getCount();
        } else {
            filterResults.count = 0;
            cursorA = null;
        }
        filterResults.values = cursorA;
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursorA = this.f2624a.a();
        Object obj = filterResults.values;
        if (obj == null || obj == cursorA) {
            return;
        }
        this.f2624a.a((Cursor) obj);
    }
}
