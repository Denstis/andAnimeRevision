package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class CachedRegionTracker implements Cache.Listener {
    public static final int CACHED_TO_END = -2;
    public static final int NOT_CACHED = -1;
    private static final String TAG = "CachedRegionTracker";
    private final Cache cache;
    private final String cacheKey;
    private final ChunkIndex chunkIndex;
    private final TreeSet<Region> regions = new TreeSet<>();
    private final Region lookupRegion = new Region(0, 0);

    private static class Region implements Comparable<Region> {
        public long endOffset;
        public int endOffsetIndex;
        public long startOffset;

        public Region(long j2, long j3) {
            this.startOffset = j2;
            this.endOffset = j3;
        }

        @Override // java.lang.Comparable
        public int compareTo(Region region) {
            long j2 = this.startOffset;
            long j3 = region.startOffset;
            if (j2 < j3) {
                return -1;
            }
            return j2 == j3 ? 0 : 1;
        }
    }

    public CachedRegionTracker(Cache cache, String str, ChunkIndex chunkIndex) {
        this.cache = cache;
        this.cacheKey = str;
        this.chunkIndex = chunkIndex;
        synchronized (this) {
            Iterator<CacheSpan> itDescendingIterator = cache.addListener(str, this).descendingIterator();
            while (itDescendingIterator.hasNext()) {
                mergeSpan(itDescendingIterator.next());
            }
        }
    }

    private void mergeSpan(CacheSpan cacheSpan) {
        long j2 = cacheSpan.position;
        Region region = new Region(j2, cacheSpan.length + j2);
        Region regionFloor = this.regions.floor(region);
        Region regionCeiling = this.regions.ceiling(region);
        boolean zRegionsConnect = regionsConnect(regionFloor, region);
        if (regionsConnect(region, regionCeiling)) {
            if (zRegionsConnect) {
                regionFloor.endOffset = regionCeiling.endOffset;
                regionFloor.endOffsetIndex = regionCeiling.endOffsetIndex;
            } else {
                region.endOffset = regionCeiling.endOffset;
                region.endOffsetIndex = regionCeiling.endOffsetIndex;
                this.regions.add(region);
            }
            this.regions.remove(regionCeiling);
            return;
        }
        if (!zRegionsConnect) {
            int iBinarySearch = Arrays.binarySearch(this.chunkIndex.offsets, region.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region.endOffsetIndex = iBinarySearch;
            this.regions.add(region);
            return;
        }
        regionFloor.endOffset = region.endOffset;
        int i2 = regionFloor.endOffsetIndex;
        while (true) {
            ChunkIndex chunkIndex = this.chunkIndex;
            if (i2 >= chunkIndex.length - 1) {
                break;
            }
            int i3 = i2 + 1;
            if (chunkIndex.offsets[i3] > regionFloor.endOffset) {
                break;
            } else {
                i2 = i3;
            }
        }
        regionFloor.endOffsetIndex = i2;
    }

    private boolean regionsConnect(Region region, Region region2) {
        return (region == null || region2 == null || region.endOffset != region2.startOffset) ? false : true;
    }

    public synchronized int getRegionEndTimeMs(long j2) {
        this.lookupRegion.startOffset = j2;
        Region regionFloor = this.regions.floor(this.lookupRegion);
        if (regionFloor != null && j2 <= regionFloor.endOffset && regionFloor.endOffsetIndex != -1) {
            int i2 = regionFloor.endOffsetIndex;
            if (i2 == this.chunkIndex.length - 1) {
                if (regionFloor.endOffset == this.chunkIndex.offsets[i2] + ((long) this.chunkIndex.sizes[i2])) {
                    return -2;
                }
            }
            return (int) ((this.chunkIndex.timesUs[i2] + ((this.chunkIndex.durationsUs[i2] * (regionFloor.endOffset - this.chunkIndex.offsets[i2])) / ((long) this.chunkIndex.sizes[i2]))) / 1000);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        mergeSpan(cacheSpan);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        Region region = new Region(cacheSpan.position, cacheSpan.position + cacheSpan.length);
        Region regionFloor = this.regions.floor(region);
        if (regionFloor == null) {
            Log.e(TAG, "Removed a span we were not aware of");
            return;
        }
        this.regions.remove(regionFloor);
        if (regionFloor.startOffset < region.startOffset) {
            Region region2 = new Region(regionFloor.startOffset, region.startOffset);
            int iBinarySearch = Arrays.binarySearch(this.chunkIndex.offsets, region2.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region2.endOffsetIndex = iBinarySearch;
            this.regions.add(region2);
        }
        if (regionFloor.endOffset > region.endOffset) {
            Region region3 = new Region(region.endOffset + 1, regionFloor.endOffset);
            region3.endOffsetIndex = regionFloor.endOffsetIndex;
            this.regions.add(region3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    public void release() {
        this.cache.removeListener(this.cacheKey, this);
    }
}
