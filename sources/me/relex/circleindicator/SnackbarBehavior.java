package me.relex.circleindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.h.o.s;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarBehavior extends CoordinatorLayout.c<CircleIndicator> {
    public SnackbarBehavior() {
    }

    public SnackbarBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private float a(CoordinatorLayout coordinatorLayout, CircleIndicator circleIndicator) {
        List<View> dependencies = coordinatorLayout.getDependencies(circleIndicator);
        int size = dependencies.size();
        float fMin = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            View view = dependencies.get(i2);
            if ((view instanceof Snackbar.SnackbarLayout) && coordinatorLayout.doViewsOverlap(circleIndicator, view)) {
                fMin = Math.min(fMin, s.r(view) - view.getHeight());
            }
        }
        return fMin;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, CircleIndicator circleIndicator, View view) {
        return view instanceof Snackbar.SnackbarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, CircleIndicator circleIndicator, View view) {
        circleIndicator.setTranslationY(a(coordinatorLayout, circleIndicator));
        return true;
    }
}
