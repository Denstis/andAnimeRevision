package b.h.o;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static boolean a(MotionEvent motionEvent, int i2) {
        return (motionEvent.getSource() & i2) == i2;
    }
}
