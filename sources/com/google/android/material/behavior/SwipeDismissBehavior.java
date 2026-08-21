package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.h.o.s;
import b.j.b.c;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean interceptingEvents;
    OnDismissListener listener;
    private boolean sensitivitySet;
    c viewDragHelper;
    private float sensitivity = DEFAULT_ALPHA_START_DISTANCE;
    int swipeDirection = 2;
    float dragDismissThreshold = 0.5f;
    float alphaStartSwipeDistance = DEFAULT_ALPHA_START_DISTANCE;
    float alphaEndSwipeDistance = 0.5f;
    private final c.AbstractC0113c dragCallback = new c.AbstractC0113c() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        private boolean shouldDismiss(View view, float f2) {
            if (f2 == SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                return Math.abs(view.getLeft() - this.originalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.dragDismissThreshold);
            }
            boolean z = s.k(view) == 1;
            int i2 = SwipeDismissBehavior.this.swipeDirection;
            if (i2 == 2) {
                return true;
            }
            if (i2 == 0) {
                if (z) {
                    if (f2 >= SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                        return false;
                    }
                } else if (f2 <= SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                    return false;
                }
                return true;
            }
            if (i2 != 1) {
                return false;
            }
            if (z) {
                if (f2 <= SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                    return false;
                }
            } else if (f2 >= SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
        @Override // b.j.b.c.AbstractC0113c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int clampViewPositionHorizontal(android.view.View r3, int r4, int r5) {
            /*
                r2 = this;
                int r5 = b.h.o.s.k(r3)
                r0 = 1
                if (r5 != r0) goto L9
                r5 = 1
                goto La
            L9:
                r5 = 0
            La:
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r1 = r1.swipeDirection
                if (r1 != 0) goto L24
                if (r5 == 0) goto L1c
            L12:
                int r5 = r2.originalCapturedViewLeft
                int r3 = r3.getWidth()
                int r5 = r5 - r3
                int r3 = r2.originalCapturedViewLeft
                goto L37
            L1c:
                int r5 = r2.originalCapturedViewLeft
                int r3 = r3.getWidth()
                int r3 = r3 + r5
                goto L37
            L24:
                if (r1 != r0) goto L29
                if (r5 == 0) goto L12
                goto L1c
            L29:
                int r5 = r2.originalCapturedViewLeft
                int r0 = r3.getWidth()
                int r5 = r5 - r0
                int r0 = r2.originalCapturedViewLeft
                int r3 = r3.getWidth()
                int r3 = r3 + r0
            L37:
                int r3 = com.google.android.material.behavior.SwipeDismissBehavior.clamp(r5, r4, r3)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.AnonymousClass1.clampViewPositionHorizontal(android.view.View, int, int):int");
        }

        @Override // b.j.b.c.AbstractC0113c
        public int clampViewPositionVertical(View view, int i2, int i3) {
            return view.getTop();
        }

        @Override // b.j.b.c.AbstractC0113c
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewCaptured(View view, int i2) {
            this.activePointerId = i2;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewDragStateChanged(int i2) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i2);
            }
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewPositionChanged(View view, int i2, int i3, int i4, int i5) {
            float width = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance);
            float width2 = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance);
            float f2 = i2;
            if (f2 <= width) {
                view.setAlpha(1.0f);
            } else if (f2 >= width2) {
                view.setAlpha(SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE, 1.0f - SwipeDismissBehavior.fraction(width, width2, f2), 1.0f));
            }
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewReleased(View view, float f2, float f3) {
            int i2;
            boolean z;
            OnDismissListener onDismissListener;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f2)) {
                int left = view.getLeft();
                int i3 = this.originalCapturedViewLeft;
                i2 = left < i3 ? i3 - width : i3 + width;
                z = true;
            } else {
                i2 = this.originalCapturedViewLeft;
                z = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.d(i2, view.getTop())) {
                s.a(view, new SettleRunnable(view, z));
            } else {
                if (!z || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                onDismissListener.onDismiss(view);
            }
        }

        @Override // b.j.b.c.AbstractC0113c
        public boolean tryCaptureView(View view, int i2) {
            return this.activePointerId == -1 && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i2);
    }

    private class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        SettleRunnable(View view, boolean z) {
            this.view = view;
            this.dismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            c cVar = SwipeDismissBehavior.this.viewDragHelper;
            if (cVar != null && cVar.a(true)) {
                s.a(this.view, this);
            } else {
                if (!this.dismiss || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                onDismissListener.onDismiss(this.view);
            }
        }
    }

    static float clamp(float f2, float f3, float f4) {
        return Math.min(Math.max(f2, f3), f4);
    }

    static int clamp(int i2, int i3, int i4) {
        return Math.min(Math.max(i2, i3), i4);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        if (this.viewDragHelper == null) {
            this.viewDragHelper = this.sensitivitySet ? c.a(viewGroup, this.sensitivity, this.dragCallback) : c.a(viewGroup, this.dragCallback);
        }
    }

    static float fraction(float f2, float f3, float f4) {
        return (f4 - f2) / (f3 - f2);
    }

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    public int getDragState() {
        c cVar = this.viewDragHelper;
        if (cVar != null) {
            return cVar.e();
        }
        return 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.interceptingEvents = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.interceptingEvents;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (!z) {
            return false;
        }
        ensureViewDragHelper(coordinatorLayout);
        return this.viewDragHelper.b(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        c cVar = this.viewDragHelper;
        if (cVar == null) {
            return false;
        }
        cVar.a(motionEvent);
        return true;
    }

    public void setDragDismissDistance(float f2) {
        this.dragDismissThreshold = clamp(DEFAULT_ALPHA_START_DISTANCE, f2, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f2) {
        this.alphaEndSwipeDistance = clamp(DEFAULT_ALPHA_START_DISTANCE, f2, 1.0f);
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.listener = onDismissListener;
    }

    public void setSensitivity(float f2) {
        this.sensitivity = f2;
        this.sensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f2) {
        this.alphaStartSwipeDistance = clamp(DEFAULT_ALPHA_START_DISTANCE, f2, 1.0f);
    }

    public void setSwipeDirection(int i2) {
        this.swipeDirection = i2;
    }
}
