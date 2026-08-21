package animebestapp.com.utils;

import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class e extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RecyclerView f2127c;

    public e(RecyclerView recyclerView) {
        g.p.b.f.b(recyclerView, "mRecyclerView");
        this.f2127c = recyclerView;
        this.f2126b = 10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        g.p.b.f.b(motionEvent, "e");
        return super.onDown(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        RecyclerView recyclerView;
        boolean z;
        if (Math.abs(f2) > Math.abs(f3) + 5) {
            if (this.f2127c.isNestedScrollingEnabled()) {
                recyclerView = this.f2127c;
                z = false;
                recyclerView.setNestedScrollingEnabled(z);
            }
        } else if (Math.abs(f3) > this.f2126b && !this.f2127c.isNestedScrollingEnabled()) {
            recyclerView = this.f2127c;
            z = true;
            recyclerView.setNestedScrollingEnabled(z);
        }
        return super.onScroll(motionEvent, motionEvent2, f2, f3);
    }
}
