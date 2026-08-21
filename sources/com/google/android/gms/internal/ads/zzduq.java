package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzduq implements Cloneable {
    private Object value;
    private zzduo<?, ?> zzhrf;
    private List<Object> zzhrg = new ArrayList();

    zzduq() {
    }

    private final byte[] toByteArray() {
        byte[] bArr = new byte[zznx()];
        zza(zzduj.zzae(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzbcj, reason: merged with bridge method [inline-methods] */
    public final zzduq clone() {
        Object objClone;
        zzduq zzduqVar = new zzduq();
        try {
            zzduqVar.zzhrf = this.zzhrf;
            if (this.zzhrg == null) {
                zzduqVar.zzhrg = null;
            } else {
                zzduqVar.zzhrg.addAll(this.zzhrg);
            }
            if (this.value != null) {
                if (this.value instanceof zzdus) {
                    objClone = (zzdus) ((zzdus) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    objClone = ((byte[]) this.value).clone();
                } else {
                    int i2 = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzduqVar.value = bArr2;
                        while (i2 < bArr.length) {
                            bArr2[i2] = (byte[]) bArr[i2].clone();
                            i2++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        objClone = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        objClone = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        objClone = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        objClone = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        objClone = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzdus[]) {
                        zzdus[] zzdusVarArr = (zzdus[]) this.value;
                        zzdus[] zzdusVarArr2 = new zzdus[zzdusVarArr.length];
                        zzduqVar.value = zzdusVarArr2;
                        while (i2 < zzdusVarArr.length) {
                            zzdusVarArr2[i2] = (zzdus) zzdusVarArr[i2].clone();
                            i2++;
                        }
                    }
                }
                zzduqVar.value = objClone;
            }
            return zzduqVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzduq)) {
            return false;
        }
        zzduq zzduqVar = (zzduq) obj;
        if (this.value == null || zzduqVar.value == null) {
            List<Object> list2 = this.zzhrg;
            if (list2 != null && (list = zzduqVar.zzhrg) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(toByteArray(), zzduqVar.toByteArray());
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }
        zzduo<?, ?> zzduoVar = this.zzhrf;
        if (zzduoVar != zzduqVar.zzhrf) {
            return false;
        }
        if (!zzduoVar.zzhrd.isArray()) {
            return this.value.equals(zzduqVar.value);
        }
        Object obj2 = this.value;
        return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) zzduqVar.value) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) zzduqVar.value) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) zzduqVar.value) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) zzduqVar.value) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) zzduqVar.value) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) zzduqVar.value) : Arrays.deepEquals((Object[]) obj2, (Object[]) zzduqVar.value);
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    final void zza(zzduj zzdujVar) {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.zzhrg.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
    }

    final int zznx() {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.zzhrg.iterator();
        if (!it.hasNext()) {
            return 0;
        }
        it.next();
        throw new NoSuchMethodError();
    }
}
