package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import b.q.n;
import b.q.t;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TextScale extends n {
    private static final String PROPNAME_SCALE = "android:textscale:scale";

    private void captureValues(t tVar) {
        View view = tVar.f2976b;
        if (view instanceof TextView) {
            tVar.f2975a.put(PROPNAME_SCALE, Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // b.q.n
    public void captureEndValues(t tVar) {
        captureValues(tVar);
    }

    @Override // b.q.n
    public void captureStartValues(t tVar) {
        captureValues(tVar);
    }

    @Override // b.q.n
    public Animator createAnimator(ViewGroup viewGroup, t tVar, t tVar2) {
        if (tVar == null || tVar2 == null || !(tVar.f2976b instanceof TextView)) {
            return null;
        }
        View view = tVar2.f2976b;
        if (!(view instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) view;
        Map<String, Object> map = tVar.f2975a;
        Map<String, Object> map2 = tVar2.f2975a;
        float fFloatValue = map.get(PROPNAME_SCALE) != null ? ((Float) map.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        float fFloatValue2 = map2.get(PROPNAME_SCALE) != null ? ((Float) map2.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.TextScale.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                textView.setScaleX(fFloatValue3);
                textView.setScaleY(fFloatValue3);
            }
        });
        return valueAnimatorOfFloat;
    }
}
