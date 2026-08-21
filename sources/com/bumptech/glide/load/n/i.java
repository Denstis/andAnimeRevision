package com.bumptech.glide.load.n;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i<DataType, ResourceType, Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<DataType> f3582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<? extends com.bumptech.glide.load.j<DataType, ResourceType>> f3583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.p.h.e<ResourceType, Transcode> f3584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b.h.n.d<List<Throwable>> f3585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3586e;

    interface a<ResourceType> {
        v<ResourceType> a(v<ResourceType> vVar);
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends com.bumptech.glide.load.j<DataType, ResourceType>> list, com.bumptech.glide.load.p.h.e<ResourceType, Transcode> eVar, b.h.n.d<List<Throwable>> dVar) {
        this.f3582a = cls;
        this.f3583b = list;
        this.f3584c = eVar;
        this.f3585d = dVar;
        this.f3586e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    private v<ResourceType> a(com.bumptech.glide.load.m.e<DataType> eVar, int i2, int i3, com.bumptech.glide.load.i iVar) {
        List<Throwable> listA = this.f3585d.a();
        c.a.a.t.j.a(listA);
        List<Throwable> list = listA;
        try {
            return a(eVar, i2, i3, iVar, list);
        } finally {
            this.f3585d.a(list);
        }
    }

    private v<ResourceType> a(com.bumptech.glide.load.m.e<DataType> eVar, int i2, int i3, com.bumptech.glide.load.i iVar, List<Throwable> list) throws q {
        int size = this.f3583b.size();
        v<ResourceType> vVarA = null;
        for (int i4 = 0; i4 < size; i4++) {
            com.bumptech.glide.load.j<DataType, ResourceType> jVar = this.f3583b.get(i4);
            try {
                if (jVar.a(eVar.a(), iVar)) {
                    vVarA = jVar.a(eVar.a(), i2, i3, iVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + jVar, e2);
                }
                list.add(e2);
            }
            if (vVarA != null) {
                break;
            }
        }
        if (vVarA != null) {
            return vVarA;
        }
        throw new q(this.f3586e, new ArrayList(list));
    }

    public v<Transcode> a(com.bumptech.glide.load.m.e<DataType> eVar, int i2, int i3, com.bumptech.glide.load.i iVar, a<ResourceType> aVar) {
        return this.f3584c.a(aVar.a(a(eVar, i2, i3, iVar)), iVar);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f3582a + ", decoders=" + this.f3583b + ", transcoder=" + this.f3584c + '}';
    }
}
