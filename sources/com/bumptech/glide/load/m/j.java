package com.bumptech.glide.load.m;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.m.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class j implements d<InputStream> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final b f3400h = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.o.g f3401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f3403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HttpURLConnection f3404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private InputStream f3405f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f3406g;

    private static class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.m.j.b
        public HttpURLConnection a(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }

    interface b {
        HttpURLConnection a(URL url);
    }

    public j(com.bumptech.glide.load.o.g gVar, int i2) {
        this(gVar, i2, f3400h);
    }

    j(com.bumptech.glide.load.o.g gVar, int i2, b bVar) {
        this.f3401b = gVar;
        this.f3402c = i2;
        this.f3403d = bVar;
    }

    private InputStream a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            inputStream = c.a.a.t.c.a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            inputStream = httpURLConnection.getInputStream();
        }
        this.f3405f = inputStream;
        return this.f3405f;
    }

    private InputStream a(URL url, int i2, URL url2, Map<String, String> map) throws IOException {
        if (i2 >= 5) {
            throw new com.bumptech.glide.load.e("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new com.bumptech.glide.load.e("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.f3404e = this.f3403d.a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f3404e.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f3404e.setConnectTimeout(this.f3402c);
        this.f3404e.setReadTimeout(this.f3402c);
        this.f3404e.setUseCaches(false);
        this.f3404e.setDoInput(true);
        this.f3404e.setInstanceFollowRedirects(false);
        this.f3404e.connect();
        this.f3405f = this.f3404e.getInputStream();
        if (this.f3406g) {
            return null;
        }
        int responseCode = this.f3404e.getResponseCode();
        if (a(responseCode)) {
            return a(this.f3404e);
        }
        if (!b(responseCode)) {
            if (responseCode == -1) {
                throw new com.bumptech.glide.load.e(responseCode);
            }
            throw new com.bumptech.glide.load.e(this.f3404e.getResponseMessage(), responseCode);
        }
        String headerField = this.f3404e.getHeaderField("Location");
        if (TextUtils.isEmpty(headerField)) {
            throw new com.bumptech.glide.load.e("Received empty or null redirect url");
        }
        URL url3 = new URL(url, headerField);
        b();
        return a(url3, i2 + 1, url, map);
    }

    private static boolean a(int i2) {
        return i2 / 100 == 2;
    }

    private static boolean b(int i2) {
        return i2 / 100 == 3;
    }

    @Override // com.bumptech.glide.load.m.d
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.m.d
    public void a(c.a.a.h hVar, d.a<? super InputStream> aVar) {
        StringBuilder sb;
        long jA = c.a.a.t.f.a();
        try {
            try {
                aVar.a(a(this.f3401b.c(), 0, null, this.f3401b.b()));
            } catch (IOException e2) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e2);
                }
                aVar.a((Exception) e2);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                } else {
                    sb = new StringBuilder();
                }
            }
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                sb.append(c.a.a.t.f.a(jA));
                Log.v("HttpUrlFetcher", sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + c.a.a.t.f.a(jA));
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.m.d
    public void b() {
        InputStream inputStream = this.f3405f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f3404e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f3404e = null;
    }

    @Override // com.bumptech.glide.load.m.d
    public com.bumptech.glide.load.a c() {
        return com.bumptech.glide.load.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.m.d
    public void cancel() {
        this.f3406g = true;
    }
}
