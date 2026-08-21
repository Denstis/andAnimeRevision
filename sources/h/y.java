package h;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public enum y {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    QUIC("quic");


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4972b;

    y(String str) {
        this.f4972b = str;
    }

    public static y a(String str) throws IOException {
        if (str.equals(HTTP_1_0.f4972b)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.f4972b)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.f4972b)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.f4972b)) {
            return SPDY_3;
        }
        if (str.equals(QUIC.f4972b)) {
            return QUIC;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f4972b;
    }
}
