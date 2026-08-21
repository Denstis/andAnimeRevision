package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.text.CaptionStyleCompat;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleView extends View implements TextOutput {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    private boolean applyEmbeddedFontSizes;
    private boolean applyEmbeddedStyles;
    private float bottomPaddingFraction;
    private List<Cue> cues;
    private final List<SubtitlePainter> painters;
    private CaptionStyleCompat style;
    private float textSize;
    private int textSizeType;

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.painters = new ArrayList();
        this.textSizeType = 0;
        this.textSize = 0.0533f;
        this.applyEmbeddedStyles = true;
        this.applyEmbeddedFontSizes = true;
        this.style = CaptionStyleCompat.DEFAULT;
        this.bottomPaddingFraction = 0.08f;
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private CaptionStyleCompat getUserCaptionStyleV19() {
        return CaptionStyleCompat.createFromCaptionStyle(((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle());
    }

    @TargetApi(19)
    private boolean isCaptionManagerEnabled() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).isEnabled();
    }

    private float resolveCueTextSize(Cue cue, int i2, int i3) {
        int i4 = cue.textSizeType;
        if (i4 != Integer.MIN_VALUE) {
            float f2 = cue.textSize;
            if (f2 != Float.MIN_VALUE) {
                return Math.max(resolveTextSize(i4, f2, i2, i3), 0.0f);
            }
        }
        return 0.0f;
    }

    private float resolveTextSize(int i2, float f2, int i3, int i4) {
        float f3;
        if (i2 == 0) {
            f3 = i4;
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    return Float.MIN_VALUE;
                }
                return f2;
            }
            f3 = i3;
        }
        return f2 * f3;
    }

    private void setTextSize(int i2, float f2) {
        if (this.textSizeType == i2 && this.textSize == f2) {
            return;
        }
        this.textSizeType = i2;
        this.textSize = f2;
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<Cue> list = this.cues;
        int i2 = 0;
        int size = list == null ? 0 : list.size();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i3 = paddingBottom - paddingTop;
        float fResolveTextSize = resolveTextSize(this.textSizeType, this.textSize, height, i3);
        if (fResolveTextSize <= 0.0f) {
            return;
        }
        while (i2 < size) {
            Cue cue = this.cues.get(i2);
            int i4 = paddingBottom;
            int i5 = width;
            this.painters.get(i2).draw(cue, this.applyEmbeddedStyles, this.applyEmbeddedFontSizes, this.style, fResolveTextSize, resolveCueTextSize(cue, height, i3), this.bottomPaddingFraction, canvas, paddingLeft, paddingTop, i5, i4);
            i2++;
            i3 = i3;
            paddingBottom = i4;
            width = i5;
            paddingLeft = paddingLeft;
        }
    }

    @Override // com.google.android.exoplayer2.text.TextOutput
    public void onCues(List<Cue> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.applyEmbeddedFontSizes == z) {
            return;
        }
        this.applyEmbeddedFontSizes = z;
        invalidate();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.applyEmbeddedStyles == z && this.applyEmbeddedFontSizes == z) {
            return;
        }
        this.applyEmbeddedStyles = z;
        this.applyEmbeddedFontSizes = z;
        invalidate();
    }

    public void setBottomPaddingFraction(float f2) {
        if (this.bottomPaddingFraction == f2) {
            return;
        }
        this.bottomPaddingFraction = f2;
        invalidate();
    }

    public void setCues(List<Cue> list) {
        if (this.cues == list) {
            return;
        }
        this.cues = list;
        int size = list == null ? 0 : list.size();
        while (this.painters.size() < size) {
            this.painters.add(new SubtitlePainter(getContext()));
        }
        invalidate();
    }

    public void setFixedTextSize(int i2, float f2) {
        Context context = getContext();
        setTextSize(2, TypedValue.applyDimension(i2, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f2) {
        setFractionalTextSize(f2, false);
    }

    public void setFractionalTextSize(float f2, boolean z) {
        setTextSize(z ? 1 : 0, f2);
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        if (this.style == captionStyleCompat) {
            return;
        }
        this.style = captionStyleCompat;
        invalidate();
    }

    public void setUserDefaultStyle() {
        setStyle((Util.SDK_INT < 19 || !isCaptionManagerEnabled() || isInEditMode()) ? CaptionStyleCompat.DEFAULT : getUserCaptionStyleV19());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(((Util.SDK_INT < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }
}
