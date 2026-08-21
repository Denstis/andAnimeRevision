package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class DataChunk extends Chunk {
    private static final int READ_GRANULARITY = 16384;
    private byte[] data;
    private volatile boolean loadCanceled;

    public DataChunk(DataSource dataSource, DataSpec dataSpec, int i2, Format format, int i3, Object obj, byte[] bArr) {
        super(dataSource, dataSpec, i2, format, i3, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.data = bArr;
    }

    private void maybeExpandData(int i2) {
        byte[] bArr = this.data;
        if (bArr == null) {
            this.data = new byte[READ_GRANULARITY];
        } else if (bArr.length < i2 + READ_GRANULARITY) {
            this.data = Arrays.copyOf(bArr, bArr.length + READ_GRANULARITY);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    protected abstract void consume(byte[] bArr, int i2);

    public byte[] getDataHolder() {
        return this.data;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() {
        try {
            this.dataSource.open(this.dataSpec);
            int i2 = 0;
            int i3 = 0;
            while (i2 != -1 && !this.loadCanceled) {
                maybeExpandData(i3);
                i2 = this.dataSource.read(this.data, i3, READ_GRANULARITY);
                if (i2 != -1) {
                    i3 += i2;
                }
            }
            if (!this.loadCanceled) {
                consume(this.data, i3);
            }
        } finally {
            Util.closeQuietly(this.dataSource);
        }
    }
}
