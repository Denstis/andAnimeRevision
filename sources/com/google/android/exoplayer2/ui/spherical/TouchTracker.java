package com.google.android.exoplayer2.ui.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class TouchTracker extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {
    static final float MAX_PITCH_DEGREES = 45.0f;
    private final GestureDetector gestureDetector;
    private final Listener listener;
    private final float pxPerDegrees;
    private SingleTapListener singleTapListener;
    private final PointF previousTouchPointPx = new PointF();
    private final PointF accumulatedTouchOffsetDegrees = new PointF();
    private volatile float roll = 3.1415927f;

    interface Listener {
        void onScrollChange(PointF pointF);
    }

    public TouchTracker(Context context, Listener listener, float f2) {
        this.listener = listener;
        this.pxPerDegrees = f2;
        this.gestureDetector = new GestureDetector(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.previousTouchPointPx.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        float x = (motionEvent2.getX() - this.previousTouchPointPx.x) / this.pxPerDegrees;
        float y = motionEvent2.getY();
        PointF pointF = this.previousTouchPointPx;
        float f4 = (y - pointF.y) / this.pxPerDegrees;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d2 = this.roll;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        PointF pointF2 = this.accumulatedTouchOffsetDegrees;
        pointF2.x -= (fCos * x) - (fSin * f4);
        pointF2.y += (fSin * x) + (fCos * f4);
        pointF2.y = Math.max(-45.0f, Math.min(MAX_PITCH_DEGREES, pointF2.y));
        this.listener.onScrollChange(this.accumulatedTouchOffsetDegrees);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        SingleTapListener singleTapListener = this.singleTapListener;
        if (singleTapListener != null) {
            return singleTapListener.onSingleTapUp(motionEvent);
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    public void setRoll(float f2) {
        this.roll = -f2;
    }

    public void setSingleTapListener(SingleTapListener singleTapListener) {
        this.singleTapListener = singleTapListener;
    }
}
