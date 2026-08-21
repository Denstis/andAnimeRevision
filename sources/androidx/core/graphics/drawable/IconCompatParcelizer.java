package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f926a = aVar.a(iconCompat.f926a, 1);
        iconCompat.f928c = aVar.a(iconCompat.f928c, 2);
        iconCompat.f929d = aVar.a(iconCompat.f929d, 3);
        iconCompat.f930e = aVar.a(iconCompat.f930e, 4);
        iconCompat.f931f = aVar.a(iconCompat.f931f, 5);
        iconCompat.f932g = (ColorStateList) aVar.a(iconCompat.f932g, 6);
        iconCompat.f934i = aVar.a(iconCompat.f934i, 7);
        iconCompat.c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.a aVar) {
        aVar.a(true, true);
        iconCompat.a(aVar.c());
        aVar.b(iconCompat.f926a, 1);
        aVar.b(iconCompat.f928c, 2);
        aVar.b(iconCompat.f929d, 3);
        aVar.b(iconCompat.f930e, 4);
        aVar.b(iconCompat.f931f, 5);
        aVar.b(iconCompat.f932g, 6);
        aVar.b(iconCompat.f934i, 7);
    }
}
