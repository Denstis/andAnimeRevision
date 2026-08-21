package com.bumptech.glide.load.m;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class m extends b<InputStream> {
    public m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.m.b
    public InputStream a(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.m.d
    public Class<InputStream> a() {
        return InputStream.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.m.b
    public void a(InputStream inputStream) throws IOException {
        inputStream.close();
    }
}
