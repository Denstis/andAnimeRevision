package com.bumptech.glide.load.n;

import com.bumptech.glide.load.n.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class t<Data, ResourceType, Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b.h.n.d<List<Throwable>> f3658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<? extends i<Data, ResourceType, Transcode>> f3659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3660c;

    public t(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, b.h.n.d<List<Throwable>> dVar) {
        this.f3658a = dVar;
        c.a.a.t.j.a(list);
        this.f3659b = list;
        this.f3660c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    private v<Transcode> a(com.bumptech.glide.load.m.e<Data> eVar, com.bumptech.glide.load.i iVar, int i2, int i3, i.a<ResourceType> aVar, List<Throwable> list) throws q {
        int size = this.f3659b.size();
        v<Transcode> vVarA = null;
        for (int i4 = 0; i4 < size; i4++) {
            try {
                vVarA = this.f3659b.get(i4).a(eVar, i2, i3, iVar, aVar);
            } catch (q e2) {
                list.add(e2);
            }
            if (vVarA != null) {
                break;
            }
        }
        if (vVarA != null) {
            return vVarA;
        }
        throw new q(this.f3660c, new ArrayList(list));
    }

    public v<Transcode> a(com.bumptech.glide.load.m.e<Data> eVar, com.bumptech.glide.load.i iVar, int i2, int i3, i.a<ResourceType> aVar) {
        List<Throwable> listA = this.f3658a.a();
        c.a.a.t.j.a(listA);
        List<Throwable> list = listA;
        try {
            return a(eVar, iVar, i2, i3, aVar, list);
        } finally {
            this.f3658a.a(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f3659b.toArray()) + '}';
    }
}
