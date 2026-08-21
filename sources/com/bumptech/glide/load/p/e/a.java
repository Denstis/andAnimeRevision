package com.bumptech.glide.load.p.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.core.content.c.f;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f3870a = true;

    public static Drawable a(Context context, int i2, Resources.Theme theme) {
        return a(context, context, i2, theme);
    }

    public static Drawable a(Context context, Context context2, int i2) {
        return a(context, context2, i2, null);
    }

    private static Drawable a(Context context, Context context2, int i2, Resources.Theme theme) {
        try {
            if (f3870a) {
                return c(context2, i2, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            return androidx.core.content.a.c(context2, i2);
        } catch (NoClassDefFoundError unused2) {
            f3870a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return b(context2, i2, theme);
    }

    private static Drawable b(Context context, int i2, Resources.Theme theme) {
        return f.a(context.getResources(), i2, theme);
    }

    private static Drawable c(Context context, int i2, Resources.Theme theme) {
        if (theme != null) {
            context = new b.a.n.d(context, theme);
        }
        return b.a.k.a.a.c(context, i2);
    }
}
