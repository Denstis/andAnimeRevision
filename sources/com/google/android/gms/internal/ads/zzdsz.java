package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* JADX INFO: loaded from: classes.dex */
final class zzdsz<FieldDescriptorType> extends zzdta<FieldDescriptorType, Object> {
    zzdsz(int i2) {
        super(i2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdta
    public final void zzaxj() {
        if (!isImmutable()) {
            for (int i2 = 0; i2 < zzbbo(); i2++) {
                Map.Entry<FieldDescriptorType, Object> entryZzgz = zzgz(i2);
                if (((zzdqo) entryZzgz.getKey()).zzazj()) {
                    entryZzgz.setValue(Collections.unmodifiableList((List) entryZzgz.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : zzbbp()) {
                if (((zzdqo) entry.getKey()).zzazj()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzaxj();
    }
}
