package h;

import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Comparator<String> f4516b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<String, h> f4517c = new TreeMap(f4516b);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f4518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f4519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final h f4520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h f4521g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f4522h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final h f4523i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final h f4524j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h f4525k;
    public static final h l;
    public static final h m;
    public static final h n;
    public static final h o;
    public static final h p;
    public static final h q;
    public static final h r;
    public static final h s;
    public static final h t;
    public static final h u;
    public static final h v;
    public static final h w;
    public static final h x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4526a;

    final class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            int iMin = Math.min(str.length(), str2.length());
            for (int i2 = 4; i2 < iMin; i2++) {
                char cCharAt = str.charAt(i2);
                char cCharAt2 = str2.charAt(i2);
                if (cCharAt != cCharAt2) {
                    return cCharAt < cCharAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    static {
        a("SSL_RSA_WITH_NULL_MD5", 1);
        a("SSL_RSA_WITH_NULL_SHA", 2);
        a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        a("SSL_RSA_WITH_RC4_128_MD5", 4);
        a("SSL_RSA_WITH_RC4_128_SHA", 5);
        a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        a("SSL_RSA_WITH_DES_CBC_SHA", 9);
        f4518d = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        a("SSL_DH_anon_WITH_RC4_128_MD5", 24);
        a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        a("TLS_KRB5_WITH_DES_CBC_SHA", 30);
        a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        a("TLS_KRB5_WITH_RC4_128_SHA", 32);
        a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
        a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        a("TLS_KRB5_WITH_RC4_128_MD5", 36);
        a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        f4519e = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        f4520f = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        f4521g = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        f4522h = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        f4523i = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        a("TLS_RSA_WITH_NULL_SHA256", 59);
        a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", TsExtractor.TS_STREAM_TYPE_E_AC3);
        a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        a("TLS_PSK_WITH_RC4_128_SHA", TsExtractor.TS_STREAM_TYPE_DTS);
        a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        a("TLS_RSA_WITH_SEED_CBC_SHA", 150);
        f4524j = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        f4525k = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        l = a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
        a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        a("TLS_FALLBACK_SCSV", 22016);
        a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        m = a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        n = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        o = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        p = a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        q = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        r = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        s = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        t = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        u = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        v = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        w = a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        x = a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
    }

    private h(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.f4526a = str;
    }

    public static synchronized h a(String str) {
        h hVar;
        hVar = f4517c.get(str);
        if (hVar == null) {
            hVar = new h(str);
            f4517c.put(str, hVar);
        }
        return hVar;
    }

    private static h a(String str, int i2) {
        return a(str);
    }

    static List<h> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String toString() {
        return this.f4526a;
    }
}
