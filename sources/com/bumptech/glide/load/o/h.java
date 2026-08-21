package com.bumptech.glide.load.o;

import com.bumptech.glide.load.o.j;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f3720a;

    class a implements h {
        a() {
        }

        @Override // com.bumptech.glide.load.o.h
        public Map<String, String> a() {
            return Collections.emptyMap();
        }
    }

    static {
        new a();
        f3720a = new j.a().a();
    }

    Map<String, String> a();
}
