package k.r.a;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import h.d0;
import k.e;

/* JADX INFO: loaded from: classes.dex */
final class c<T> implements e<d0, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f5192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter<T> f5193b;

    c(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f5192a = gson;
        this.f5193b = typeAdapter;
    }

    @Override // k.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public T convert(d0 d0Var) {
        JsonReader jsonReaderNewJsonReader = this.f5192a.newJsonReader(d0Var.j());
        try {
            T t = this.f5193b.read2(jsonReaderNewJsonReader);
            if (jsonReaderNewJsonReader.peek() == JsonToken.END_DOCUMENT) {
                return t;
            }
            throw new JsonIOException("JSON document was not fully consumed.");
        } finally {
            d0Var.close();
        }
    }
}
