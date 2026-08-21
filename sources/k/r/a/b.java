package k.r.a;

import com.google.android.exoplayer2.C;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import h.b0;
import h.v;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import k.e;

/* JADX INFO: loaded from: classes.dex */
final class b<T> implements e<T, b0> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v f5188c = v.a("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f5189d = Charset.forName(C.UTF8_NAME);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f5190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter<T> f5191b;

    b(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f5190a = gson;
        this.f5191b = typeAdapter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // k.e
    public b0 convert(T t) throws IOException {
        i.c cVar = new i.c();
        JsonWriter jsonWriterNewJsonWriter = this.f5190a.newJsonWriter(new OutputStreamWriter(cVar.n(), f5189d));
        this.f5191b.write(jsonWriterNewJsonWriter, t);
        jsonWriterNewJsonWriter.close();
        return b0.a(f5188c, cVar.p());
    }
}
