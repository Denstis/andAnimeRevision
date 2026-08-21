package animebestapp.com.e.c;

import android.content.Context;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import animebestapp.com.App;
import g.g;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final f INSTANCE = new f();
    private static final String[] DEVICE_IDS = {"000000000000000", "e21833235b6eef10", "012345678912345"};

    private f() {
    }

    private final boolean checkSignature(Context context) {
        try {
            g.a aVar = g.g.f4365b;
            String originalSignature = new h().getOriginalSignature();
            String sha = new h().getSha();
            if (Build.VERSION.SDK_INT >= 28) {
                SigningInfo signingInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 134217728).signingInfo;
                g.p.b.f.a((Object) signingInfo, "packageInfo.signingInfo");
                Signature[] apkContentsSigners = signingInfo.getApkContentsSigners();
                g.p.b.f.a((Object) apkContentsSigners, "packageInfo.signingInfo.apkContentsSigners");
                for (Signature signature : apkContentsSigners) {
                    MessageDigest messageDigest = MessageDigest.getInstance(sha);
                    messageDigest.update(signature.toByteArray());
                    String strEncodeToString = Base64.encodeToString(messageDigest.digest(), 0);
                    g.p.b.f.a((Object) strEncodeToString, "Base64.encodeToString(md.digest(), Base64.DEFAULT)");
                    if (strEncodeToString == null) {
                        throw new g.j("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    if (!g.p.b.f.a((Object) g.s.n.d(strEncodeToString).toString(), (Object) originalSignature)) {
                        return true;
                    }
                }
            } else {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
                g.p.b.f.a((Object) signatureArr, "packageInfo.signatures");
                for (Signature signature2 : signatureArr) {
                    MessageDigest messageDigest2 = MessageDigest.getInstance(sha);
                    messageDigest2.update(signature2.toByteArray());
                    String strEncodeToString2 = Base64.encodeToString(messageDigest2.digest(), 0);
                    g.p.b.f.a((Object) strEncodeToString2, "Base64.encodeToString(md.digest(), Base64.DEFAULT)");
                    if (strEncodeToString2 == null) {
                        throw new g.j("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    if (!g.p.b.f.a((Object) g.s.n.d(strEncodeToString2).toString(), (Object) originalSignature)) {
                        return true;
                    }
                }
            }
            g.g.a(g.l.f4367a);
        } catch (Throwable th) {
            g.a aVar2 = g.g.f4365b;
            g.g.a(g.h.a(th));
        }
        return false;
    }

    public final boolean check() {
        Log.d("CheckSignature", "false");
        Context contextA = App.Companion.a();
        if (contextA != null) {
            return checkSignature(contextA);
        }
        g.p.b.f.a();
        throw null;
    }
}
