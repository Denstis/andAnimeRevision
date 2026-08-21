package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ReusableBufferedOutputStream;
import com.google.android.exoplayer2.util.Util;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class CacheDataSink implements DataSink {
    public static final int DEFAULT_BUFFER_SIZE = 20480;
    private final int bufferSize;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private final Cache cache;
    private DataSpec dataSpec;
    private long dataSpecBytesWritten;
    private File file;
    private final long maxCacheFileSize;
    private OutputStream outputStream;
    private long outputStreamBytesWritten;
    private boolean syncFileDescriptor;
    private FileOutputStream underlyingFileOutputStream;

    public static class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache, long j2) {
        this(cache, j2, DEFAULT_BUFFER_SIZE);
    }

    public CacheDataSink(Cache cache, long j2, int i2) {
        this.cache = (Cache) Assertions.checkNotNull(cache);
        this.maxCacheFileSize = j2;
        this.bufferSize = i2;
        this.syncFileDescriptor = true;
    }

    private void closeCurrentOutputStream() {
        OutputStream outputStream = this.outputStream;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            if (this.syncFileDescriptor) {
                this.underlyingFileOutputStream.getFD().sync();
            }
            Util.closeQuietly(this.outputStream);
            this.outputStream = null;
            File file = this.file;
            this.file = null;
            this.cache.commitFile(file);
        } catch (Throwable th) {
            Util.closeQuietly(this.outputStream);
            this.outputStream = null;
            File file2 = this.file;
            this.file = null;
            file2.delete();
            throw th;
        }
    }

    private void openNextOutputStream() {
        OutputStream outputStream;
        long j2 = this.dataSpec.length;
        long jMin = j2 == -1 ? this.maxCacheFileSize : Math.min(j2 - this.dataSpecBytesWritten, this.maxCacheFileSize);
        Cache cache = this.cache;
        DataSpec dataSpec = this.dataSpec;
        this.file = cache.startFile(dataSpec.key, this.dataSpecBytesWritten + dataSpec.absoluteStreamPosition, jMin);
        this.underlyingFileOutputStream = new FileOutputStream(this.file);
        int i2 = this.bufferSize;
        if (i2 > 0) {
            ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
            if (reusableBufferedOutputStream == null) {
                this.bufferedOutputStream = new ReusableBufferedOutputStream(this.underlyingFileOutputStream, i2);
            } else {
                reusableBufferedOutputStream.reset(this.underlyingFileOutputStream);
            }
            outputStream = this.bufferedOutputStream;
        } else {
            outputStream = this.underlyingFileOutputStream;
        }
        this.outputStream = outputStream;
        this.outputStreamBytesWritten = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void close() throws CacheDataSinkException {
        if (this.dataSpec == null) {
            return;
        }
        try {
            closeCurrentOutputStream();
        } catch (IOException e2) {
            throw new CacheDataSinkException(e2);
        }
    }

    public void experimental_setSyncFileDescriptor(boolean z) {
        this.syncFileDescriptor = z;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws CacheDataSinkException {
        if (dataSpec.length == -1 && !dataSpec.isFlagSet(2)) {
            this.dataSpec = null;
            return;
        }
        this.dataSpec = dataSpec;
        this.dataSpecBytesWritten = 0L;
        try {
            openNextOutputStream();
        } catch (IOException e2) {
            throw new CacheDataSinkException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i2, int i3) throws CacheDataSinkException {
        if (this.dataSpec == null) {
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            try {
                if (this.outputStreamBytesWritten == this.maxCacheFileSize) {
                    closeCurrentOutputStream();
                    openNextOutputStream();
                }
                int iMin = (int) Math.min(i3 - i4, this.maxCacheFileSize - this.outputStreamBytesWritten);
                this.outputStream.write(bArr, i2 + i4, iMin);
                i4 += iMin;
                long j2 = iMin;
                this.outputStreamBytesWritten += j2;
                this.dataSpecBytesWritten += j2;
            } catch (IOException e2) {
                throw new CacheDataSinkException(e2);
            }
        }
    }
}
