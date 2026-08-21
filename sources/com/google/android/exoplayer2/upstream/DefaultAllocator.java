package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultAllocator implements Allocator {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private Allocation[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;
    private final byte[] initialAllocationBlock;
    private final Allocation[] singleAllocationReleaseHolder;
    private int targetBufferSize;
    private final boolean trimOnReset;

    public DefaultAllocator(boolean z, int i2) {
        this(z, i2, 0);
    }

    public DefaultAllocator(boolean z, int i2, int i3) {
        Assertions.checkArgument(i2 > 0);
        Assertions.checkArgument(i3 >= 0);
        this.trimOnReset = z;
        this.individualAllocationSize = i2;
        this.availableCount = i3;
        this.availableAllocations = new Allocation[i3 + 100];
        if (i3 > 0) {
            this.initialAllocationBlock = new byte[i3 * i2];
            for (int i4 = 0; i4 < i3; i4++) {
                this.availableAllocations[i4] = new Allocation(this.initialAllocationBlock, i4 * i2);
            }
        } else {
            this.initialAllocationBlock = null;
        }
        this.singleAllocationReleaseHolder = new Allocation[1];
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        this.allocatedCount++;
        if (this.availableCount > 0) {
            Allocation[] allocationArr = this.availableAllocations;
            int i2 = this.availableCount - 1;
            this.availableCount = i2;
            allocation = allocationArr[i2];
            this.availableAllocations[this.availableCount] = null;
        } else {
            allocation = new Allocation(new byte[this.individualAllocationSize], 0);
        }
        return allocation;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void release(Allocation allocation) {
        this.singleAllocationReleaseHolder[0] = allocation;
        release(this.singleAllocationReleaseHolder);
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void release(Allocation[] allocationArr) {
        if (this.availableCount + allocationArr.length >= this.availableAllocations.length) {
            this.availableAllocations = (Allocation[]) Arrays.copyOf(this.availableAllocations, Math.max(this.availableAllocations.length * 2, this.availableCount + allocationArr.length));
        }
        for (Allocation allocation : allocationArr) {
            Allocation[] allocationArr2 = this.availableAllocations;
            int i2 = this.availableCount;
            this.availableCount = i2 + 1;
            allocationArr2[i2] = allocation;
        }
        this.allocatedCount -= allocationArr.length;
        notifyAll();
    }

    public synchronized void reset() {
        if (this.trimOnReset) {
            setTargetBufferSize(0);
        }
    }

    public synchronized void setTargetBufferSize(int i2) {
        boolean z = i2 < this.targetBufferSize;
        this.targetBufferSize = i2;
        if (z) {
            trim();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void trim() {
        int i2 = 0;
        int iMax = Math.max(0, Util.ceilDivide(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
        if (iMax >= this.availableCount) {
            return;
        }
        if (this.initialAllocationBlock != null) {
            int i3 = this.availableCount - 1;
            while (i2 <= i3) {
                Allocation allocation = this.availableAllocations[i2];
                if (allocation.data == this.initialAllocationBlock) {
                    i2++;
                } else {
                    Allocation allocation2 = this.availableAllocations[i3];
                    if (allocation2.data != this.initialAllocationBlock) {
                        i3--;
                    } else {
                        this.availableAllocations[i2] = allocation2;
                        this.availableAllocations[i3] = allocation;
                        i3--;
                        i2++;
                    }
                }
            }
            iMax = Math.max(iMax, i2);
            if (iMax >= this.availableCount) {
                return;
            }
        }
        Arrays.fill(this.availableAllocations, iMax, this.availableCount, (Object) null);
        this.availableCount = iMax;
    }
}
