package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdpe;
import com.google.android.gms.internal.ads.zzdpf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdpf<MessageType extends zzdpf<MessageType, BuilderType>, BuilderType extends zzdpe<MessageType, BuilderType>> implements zzdsg {
    protected int zzhfq = 0;

    protected static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzdqx.checkNotNull(iterable);
        if (iterable instanceof zzdrn) {
            List<?> listZzban = ((zzdrn) iterable).zzban();
            zzdrn zzdrnVar = (zzdrn) list;
            int size = list.size();
            for (Object obj : listZzban) {
                if (obj == null) {
                    int size2 = zzdrnVar.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    for (int size3 = zzdrnVar.size() - 1; size3 >= size; size3--) {
                        zzdrnVar.remove(size3);
                    }
                    throw new NullPointerException(string);
                }
                if (obj instanceof zzdpm) {
                    zzdrnVar.zzdb((zzdpm) obj);
                } else {
                    zzdrnVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzdss) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size4 = list.size();
        for (T t : iterable) {
            if (t == null) {
                int size5 = list.size() - size4;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size5);
                sb2.append(" is null.");
                String string2 = sb2.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                throw new NullPointerException(string2);
            }
            list.add(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdsg
    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzazu()];
            zzdqf zzdqfVarZzaa = zzdqf.zzaa(bArr);
            zzb(zzdqfVarZzaa);
            zzdqfVarZzaa.zzayv();
            return bArr;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdsg
    public final zzdpm zzaxg() {
        try {
            zzdpu zzdpuVarZzfo = zzdpm.zzfo(zzazu());
            zzb(zzdpuVarZzfo.zzaxt());
            return zzdpuVarZzfo.zzaxs();
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    int zzaxh() {
        throw new UnsupportedOperationException();
    }

    void zzfi(int i2) {
        throw new UnsupportedOperationException();
    }
}
