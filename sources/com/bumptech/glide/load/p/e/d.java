package com.bumptech.glide.load.p.e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.n.v;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d implements j<Uri, Drawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3872a;

    public d(Context context) {
        this.f3872a = context.getApplicationContext();
    }

    private int a(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    private int a(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e2) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e2);
        }
    }

    private Context a(Uri uri, String str) {
        if (str.equals(this.f3872a.getPackageName())) {
            return this.f3872a;
        }
        try {
            return this.f3872a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            if (str.contains(this.f3872a.getPackageName())) {
                return this.f3872a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e2);
        }
    }

    private int b(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return a(context, uri);
        }
        if (pathSegments.size() == 1) {
            return a(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // com.bumptech.glide.load.j
    public v<Drawable> a(Uri uri, int i2, int i3, i iVar) {
        Context contextA = a(uri, uri.getAuthority());
        return c.a(a.a(this.f3872a, contextA, b(contextA, uri)));
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(Uri uri, i iVar) {
        return uri.getScheme().equals("android.resource");
    }
}
