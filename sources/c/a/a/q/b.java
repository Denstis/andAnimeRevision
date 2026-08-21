package c.a.a.q;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<ImageHeaderParser> f3243a = new ArrayList();

    public synchronized List<ImageHeaderParser> a() {
        return this.f3243a;
    }

    public synchronized void a(ImageHeaderParser imageHeaderParser) {
        this.f3243a.add(imageHeaderParser);
    }
}
