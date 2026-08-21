package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class g0 extends e0 implements f0 {
    private static Method K;
    private f0 J;

    public static class a extends b0 {
        final int p;
        final int q;
        private f0 r;
        private MenuItem s;

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.p = 22;
                this.q = 21;
            } else {
                this.p = 21;
                this.q = 22;
            }
        }

        @Override // androidx.appcompat.widget.b0, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int headersCount;
            int iPointToPosition;
            int i2;
            if (this.r != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    adapter = headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                }
                androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) adapter;
                androidx.appcompat.view.menu.k item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = iPointToPosition - headersCount) >= 0 && i2 < gVar.getCount()) {
                    item = gVar.getItem(i2);
                }
                MenuItem menuItem = this.s;
                if (menuItem != item) {
                    androidx.appcompat.view.menu.h hVarB = gVar.b();
                    if (menuItem != null) {
                        this.r.b(hVarB, menuItem);
                    }
                    this.s = item;
                    if (item != null) {
                        this.r.a(hVarB, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i2, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i2 == this.p) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i2 != this.q) {
                return super.onKeyDown(i2, keyEvent);
            }
            setSelection(-1);
            ((androidx.appcompat.view.menu.g) getAdapter()).b().close(false);
            return true;
        }

        public void setHoverListener(f0 f0Var) {
            this.r = f0Var;
        }

        @Override // androidx.appcompat.widget.b0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            K = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public g0(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    @Override // androidx.appcompat.widget.e0
    b0 a(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    @Override // androidx.appcompat.widget.f0
    public void a(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
        f0 f0Var = this.J;
        if (f0Var != null) {
            f0Var.a(hVar, menuItem);
        }
    }

    public void a(f0 f0Var) {
        this.J = f0Var;
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.F.setEnterTransition((Transition) obj);
        }
    }

    @Override // androidx.appcompat.widget.f0
    public void b(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
        f0 f0Var = this.J;
        if (f0Var != null) {
            f0Var.b(hVar, menuItem);
        }
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.F.setExitTransition((Transition) obj);
        }
    }

    public void c(boolean z) {
        Method method = K;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z));
            } catch (Exception unused) {
                Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }
}
