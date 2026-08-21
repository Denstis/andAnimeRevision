package com.bumptech.glide.load.p.g;

import android.util.Log;
import com.bumptech.glide.load.k;
import com.bumptech.glide.load.n.v;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class d implements k<c> {
    @Override // com.bumptech.glide.load.k
    public com.bumptech.glide.load.c a(com.bumptech.glide.load.i iVar) {
        return com.bumptech.glide.load.c.SOURCE;
    }

    @Override // com.bumptech.glide.load.d
    public boolean a(v<c> vVar, File file, com.bumptech.glide.load.i iVar) throws Throwable {
        try {
            c.a.a.t.a.a(vVar.get().b(), file);
            return true;
        } catch (IOException e2) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e2);
            }
            return false;
        }
    }
}
