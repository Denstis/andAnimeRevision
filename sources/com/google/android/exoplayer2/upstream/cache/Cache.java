package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.io.IOException;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface Cache {

    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(Throwable th) {
            super(th);
        }
    }

    public interface Listener {
        void onSpanAdded(Cache cache, CacheSpan cacheSpan);

        void onSpanRemoved(Cache cache, CacheSpan cacheSpan);

        void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2);
    }

    NavigableSet<CacheSpan> addListener(String str, Listener listener);

    void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations);

    void commitFile(File file);

    long getCacheSpace();

    long getCachedLength(String str, long j2, long j3);

    NavigableSet<CacheSpan> getCachedSpans(String str);

    long getContentLength(String str);

    ContentMetadata getContentMetadata(String str);

    Set<String> getKeys();

    boolean isCached(String str, long j2, long j3);

    void release();

    void releaseHoleSpan(CacheSpan cacheSpan);

    void removeListener(String str, Listener listener);

    void removeSpan(CacheSpan cacheSpan);

    void setContentLength(String str, long j2);

    File startFile(String str, long j2, long j3);

    CacheSpan startReadWrite(String str, long j2);

    CacheSpan startReadWriteNonBlocking(String str, long j2);
}
