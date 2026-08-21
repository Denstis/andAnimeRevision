package b.h.m;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: loaded from: classes.dex */
public class c implements Spannable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Spannable f2534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f2535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PrecomputedText f2536d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextPaint f2537a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextDirectionHeuristic f2538b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2539c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f2540d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final PrecomputedText.Params f2541e;

        /* JADX INFO: renamed from: b.h.m.c$a$a, reason: collision with other inner class name */
        public static class C0103a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final TextPaint f2542a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextDirectionHeuristic f2543b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f2544c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f2545d;

            public C0103a(TextPaint textPaint) {
                this.f2542a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f2544c = 1;
                    this.f2545d = 1;
                } else {
                    this.f2545d = 0;
                    this.f2544c = 0;
                }
                this.f2543b = Build.VERSION.SDK_INT >= 18 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : null;
            }

            public C0103a a(int i2) {
                this.f2544c = i2;
                return this;
            }

            public C0103a a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f2543b = textDirectionHeuristic;
                return this;
            }

            public a a() {
                return new a(this.f2542a, this.f2543b, this.f2544c, this.f2545d);
            }

            public C0103a b(int i2) {
                this.f2545d = i2;
                return this;
            }
        }

        public a(PrecomputedText.Params params) {
            this.f2537a = params.getTextPaint();
            this.f2538b = params.getTextDirection();
            this.f2539c = params.getBreakStrategy();
            this.f2540d = params.getHyphenationFrequency();
            this.f2541e = params;
        }

        a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i2, int i3) {
            this.f2541e = Build.VERSION.SDK_INT >= 28 ? new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i2).setHyphenationFrequency(i3).setTextDirection(textDirectionHeuristic).build() : null;
            this.f2537a = textPaint;
            this.f2538b = textDirectionHeuristic;
            this.f2539c = i2;
            this.f2540d = i3;
        }

        public int a() {
            return this.f2539c;
        }

        public int b() {
            return this.f2540d;
        }

        public TextDirectionHeuristic c() {
            return this.f2538b;
        }

        public TextPaint d() {
            return this.f2537a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            PrecomputedText.Params params = this.f2541e;
            if (params != null) {
                return params.equals(aVar.f2541e);
            }
            if (Build.VERSION.SDK_INT >= 23 && (this.f2539c != aVar.a() || this.f2540d != aVar.b())) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 18 && this.f2538b != aVar.c()) || this.f2537a.getTextSize() != aVar.d().getTextSize() || this.f2537a.getTextScaleX() != aVar.d().getTextScaleX() || this.f2537a.getTextSkewX() != aVar.d().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f2537a.getLetterSpacing() != aVar.d().getLetterSpacing() || !TextUtils.equals(this.f2537a.getFontFeatureSettings(), aVar.d().getFontFeatureSettings()))) || this.f2537a.getFlags() != aVar.d().getFlags()) {
                return false;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                if (!this.f2537a.getTextLocales().equals(aVar.d().getTextLocales())) {
                    return false;
                }
            } else if (i2 >= 17 && !this.f2537a.getTextLocale().equals(aVar.d().getTextLocale())) {
                return false;
            }
            if (this.f2537a.getTypeface() == null) {
                if (aVar.d().getTypeface() != null) {
                    return false;
                }
            } else if (!this.f2537a.getTypeface().equals(aVar.d().getTypeface())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return b.h.n.c.a(Float.valueOf(this.f2537a.getTextSize()), Float.valueOf(this.f2537a.getTextScaleX()), Float.valueOf(this.f2537a.getTextSkewX()), Float.valueOf(this.f2537a.getLetterSpacing()), Integer.valueOf(this.f2537a.getFlags()), this.f2537a.getTextLocales(), this.f2537a.getTypeface(), Boolean.valueOf(this.f2537a.isElegantTextHeight()), this.f2538b, Integer.valueOf(this.f2539c), Integer.valueOf(this.f2540d));
            }
            if (i2 >= 21) {
                return b.h.n.c.a(Float.valueOf(this.f2537a.getTextSize()), Float.valueOf(this.f2537a.getTextScaleX()), Float.valueOf(this.f2537a.getTextSkewX()), Float.valueOf(this.f2537a.getLetterSpacing()), Integer.valueOf(this.f2537a.getFlags()), this.f2537a.getTextLocale(), this.f2537a.getTypeface(), Boolean.valueOf(this.f2537a.isElegantTextHeight()), this.f2538b, Integer.valueOf(this.f2539c), Integer.valueOf(this.f2540d));
            }
            if (i2 < 18 && i2 < 17) {
                return b.h.n.c.a(Float.valueOf(this.f2537a.getTextSize()), Float.valueOf(this.f2537a.getTextScaleX()), Float.valueOf(this.f2537a.getTextSkewX()), Integer.valueOf(this.f2537a.getFlags()), this.f2537a.getTypeface(), this.f2538b, Integer.valueOf(this.f2539c), Integer.valueOf(this.f2540d));
            }
            return b.h.n.c.a(Float.valueOf(this.f2537a.getTextSize()), Float.valueOf(this.f2537a.getTextScaleX()), Float.valueOf(this.f2537a.getTextSkewX()), Integer.valueOf(this.f2537a.getFlags()), this.f2537a.getTextLocale(), this.f2537a.getTypeface(), this.f2538b, Integer.valueOf(this.f2539c), Integer.valueOf(this.f2540d));
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x00e3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instruction units count: 329
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: b.h.m.c.a.toString():java.lang.String");
        }
    }

    public a a() {
        return this.f2535c;
    }

    public PrecomputedText b() {
        Spannable spannable = this.f2534b;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        return this.f2534b.charAt(i2);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f2534b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f2534b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f2534b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 28 ? (T[]) this.f2536d.getSpans(i2, i3, cls) : (T[]) this.f2534b.getSpans(i2, i3, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f2534b.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i2, int i3, Class cls) {
        return this.f2534b.nextSpanTransition(i2, i3, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2536d.removeSpan(obj);
        } else {
            this.f2534b.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i2, int i3, int i4) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2536d.setSpan(obj, i2, i3, i4);
        } else {
            this.f2534b.setSpan(obj, i2, i3, i4);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i3) {
        return this.f2534b.subSequence(i2, i3);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f2534b.toString();
    }
}
