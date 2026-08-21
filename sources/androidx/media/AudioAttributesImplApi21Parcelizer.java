package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static b read(androidx.versionedparcelable.a aVar) {
        b bVar = new b();
        bVar.f1081a = (AudioAttributes) aVar.a(bVar.f1081a, 1);
        bVar.f1082b = aVar.a(bVar.f1082b, 2);
        return bVar;
    }

    public static void write(b bVar, androidx.versionedparcelable.a aVar) {
        aVar.a(false, false);
        aVar.b(bVar.f1081a, 1);
        aVar.b(bVar.f1082b, 2);
    }
}
