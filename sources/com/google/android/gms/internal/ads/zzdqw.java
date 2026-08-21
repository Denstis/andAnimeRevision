package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;
import com.google.android.gms.internal.ads.zzdqw.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdqw<MessageType extends zzdqw<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzdpf<MessageType, BuilderType> {
    private static Map<Object, zzdqw<?, ?>> zzhkt = new ConcurrentHashMap();
    protected zzdtq zzhkr = zzdtq.zzbbx();
    private int zzhks = -1;

    public static abstract class zza<MessageType extends zzdqw<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzdpe<MessageType, BuilderType> {
        private final MessageType zzhko;
        protected MessageType zzhkp;
        private boolean zzhkq = false;

        protected zza(MessageType messagetype) {
            this.zzhko = messagetype;
            this.zzhkp = (MessageType) messagetype.zza(zzd.zzhky, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzdsr.zzbbf().zzax(messagetype).zzf(messagetype, messagetype2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.google.android.gms.internal.ads.zzdpe
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public final BuilderType zza(zzdpy zzdpyVar, zzdqj zzdqjVar) throws IOException {
            zzazn();
            try {
                zzdsr.zzbbf().zzax(this.zzhkp).zza(this.zzhkp, zzdqd.zza(zzdpyVar), zzdqjVar);
                return this;
            } catch (RuntimeException e2) {
                if (e2.getCause() instanceof IOException) {
                    throw ((IOException) e2.getCause());
                }
                throw e2;
            }
        }

        private final BuilderType zzb(byte[] bArr, int i2, int i3, zzdqj zzdqjVar) throws zzdrg {
            zzazn();
            try {
                zzdsr.zzbbf().zzax(this.zzhkp).zza(this.zzhkp, bArr, 0, i3 + 0, new zzdpl(zzdqjVar));
                return this;
            } catch (zzdrg e2) {
                throw e2;
            } catch (IOException e3) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
            } catch (IndexOutOfBoundsException unused) {
                throw zzdrg.zzbac();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.zzdpe
        public /* synthetic */ Object clone() {
            zza zzaVar = (zza) this.zzhko.zza(zzd.zzhkz, null, null);
            zzaVar.zza((zzdqw) zzazq());
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdsi
        public final boolean isInitialized() {
            return zzdqw.zza(this.zzhkp, false);
        }

        @Override // com.google.android.gms.internal.ads.zzdpe
        public final /* synthetic */ zzdpe zza(byte[] bArr, int i2, int i3, zzdqj zzdqjVar) {
            return zzb(bArr, 0, i3, zzdqjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdpe
        public final BuilderType zza(MessageType messagetype) {
            zzazn();
            zza(this.zzhkp, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.zzdpe
        /* JADX INFO: renamed from: zzaxf */
        public final /* synthetic */ zzdpe clone() {
            return (zza) clone();
        }

        protected final void zzazn() {
            if (this.zzhkq) {
                MessageType messagetype = (MessageType) this.zzhkp.zza(zzd.zzhky, null, null);
                zza(messagetype, this.zzhkp);
                this.zzhkp = messagetype;
                this.zzhkq = false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdsf
        /* JADX INFO: renamed from: zzazo, reason: merged with bridge method [inline-methods] */
        public MessageType zzazq() {
            if (this.zzhkq) {
                return this.zzhkp;
            }
            MessageType messagetype = this.zzhkp;
            zzdsr.zzbbf().zzax(messagetype).zzak(messagetype);
            this.zzhkq = true;
            return this.zzhkp;
        }

        @Override // com.google.android.gms.internal.ads.zzdsf
        /* JADX INFO: renamed from: zzazp, reason: merged with bridge method [inline-methods] */
        public final MessageType zzazr() {
            MessageType messagetype = (MessageType) zzazq();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzdto(messagetype);
        }

        @Override // com.google.android.gms.internal.ads.zzdsi
        public final /* synthetic */ zzdsg zzazs() {
            return this.zzhko;
        }
    }

    public static abstract class zzb<MessageType extends zzb<MessageType, BuilderType>, BuilderType> extends zzdqw<MessageType, BuilderType> implements zzdsi {
        protected zzdqm<Object> zzhku = zzdqm.zzazc();

        final zzdqm<Object> zzazz() {
            if (this.zzhku.isImmutable()) {
                this.zzhku = (zzdqm) this.zzhku.clone();
            }
            return this.zzhku;
        }
    }

    public static class zzc<T extends zzdqw<T, ?>> extends zzdph<T> {
        private final T zzhko;

        public zzc(T t) {
            this.zzhko = t;
        }
    }

    public enum zzd {
        public static final int zzhkv = 1;
        public static final int zzhkw = 2;
        public static final int zzhkx = 3;
        public static final int zzhky = 4;
        public static final int zzhkz = 5;
        public static final int zzhla = 6;
        public static final int zzhlb = 7;
        private static final /* synthetic */ int[] zzhlc = {zzhkv, zzhkw, zzhkx, zzhky, zzhkz, zzhla, zzhlb};
        public static final int zzhld = 1;
        public static final int zzhle = 2;
        private static final /* synthetic */ int[] zzhlf = {zzhld, zzhle};
        public static final int zzhlg = 1;
        public static final int zzhlh = 2;
        private static final /* synthetic */ int[] zzhli = {zzhlg, zzhlh};

        public static int[] zzbaa() {
            return (int[]) zzhlc.clone();
        }
    }

    public static class zze<ContainingType extends zzdsg, Type> extends zzdqh<ContainingType, Type> {
    }

    protected static <T extends zzdqw<T, ?>> T zza(T t, zzdpm zzdpmVar) {
        return (T) zzb(zzb(zza(t, zzdpmVar, zzdqj.zzaza())));
    }

    private static <T extends zzdqw<T, ?>> T zza(T t, zzdpm zzdpmVar, zzdqj zzdqjVar) throws zzdrg {
        try {
            zzdpy zzdpyVarZzaxp = zzdpmVar.zzaxp();
            T t2 = (T) zza(t, zzdpyVarZzaxp, zzdqjVar);
            try {
                zzdpyVarZzaxp.zzfp(0);
                return t2;
            } catch (zzdrg e2) {
                throw e2.zzo(t2);
            }
        } catch (zzdrg e3) {
            throw e3;
        }
    }

    private static <T extends zzdqw<T, ?>> T zza(T t, zzdpy zzdpyVar, zzdqj zzdqjVar) throws zzdrg {
        T t2 = (T) t.zza(zzd.zzhky, null, null);
        try {
            zzdsv zzdsvVarZzax = zzdsr.zzbbf().zzax(t2);
            zzdsvVarZzax.zza(t2, zzdqd.zza(zzdpyVar), zzdqjVar);
            zzdsvVarZzax.zzak(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzdrg) {
                throw ((zzdrg) e2.getCause());
            }
            throw new zzdrg(e2.getMessage()).zzo(t2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof zzdrg) {
                throw ((zzdrg) e3.getCause());
            }
            throw e3;
        }
    }

    protected static <T extends zzdqw<T, ?>> T zza(T t, byte[] bArr) {
        return (T) zzb(zza(t, bArr, 0, bArr.length, zzdqj.zzaza()));
    }

    private static <T extends zzdqw<T, ?>> T zza(T t, byte[] bArr, int i2, int i3, zzdqj zzdqjVar) throws zzdrg {
        T t2 = (T) t.zza(zzd.zzhky, null, null);
        try {
            zzdsv zzdsvVarZzax = zzdsr.zzbbf().zzax(t2);
            zzdsvVarZzax.zza(t2, bArr, 0, i3, new zzdpl(zzdqjVar));
            zzdsvVarZzax.zzak(t2);
            if (t2.zzhfq == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzdrg) {
                throw ((zzdrg) e2.getCause());
            }
            throw new zzdrg(e2.getMessage()).zzo(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzdrg.zzbac().zzo(t2);
        }
    }

    protected static <T extends zzdqw<T, ?>> T zza(T t, byte[] bArr, zzdqj zzdqjVar) {
        return (T) zzb(zza(t, bArr, 0, bArr.length, zzdqjVar));
    }

    protected static zzdrb zza(zzdrb zzdrbVar) {
        int size = zzdrbVar.size();
        return zzdrbVar.zzfl(size == 0 ? 10 : size << 1);
    }

    protected static <E> zzdrd<E> zza(zzdrd<E> zzdrdVar) {
        int size = zzdrdVar.size();
        return zzdrdVar.zzfl(size == 0 ? 10 : size << 1);
    }

    protected static Object zza(zzdsg zzdsgVar, String str, Object[] objArr) {
        return new zzdst(zzdsgVar, str, objArr);
    }

    static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static <T extends zzdqw<?, ?>> void zza(Class<T> cls, T t) {
        zzhkt.put(cls, t);
    }

    protected static final <T extends zzdqw<T, ?>> boolean zza(T t, boolean z) {
        byte bByteValue = ((Byte) t.zza(zzd.zzhkv, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzaw = zzdsr.zzbbf().zzax(t).zzaw(t);
        if (z) {
            t.zza(zzd.zzhkw, zZzaw ? t : null, null);
        }
        return zZzaw;
    }

    protected static zzdrb zzazv() {
        return zzdqy.zzbab();
    }

    protected static <E> zzdrd<E> zzazw() {
        return zzdsu.zzbbi();
    }

    private static <T extends zzdqw<T, ?>> T zzb(T t) throws zzdrg {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new zzdrg(new zzdto(t).getMessage()).zzo(t);
    }

    static <T extends zzdqw<?, ?>> T zzf(Class<T> cls) {
        zzdqw<?, ?> zzdqwVar = zzhkt.get(cls);
        if (zzdqwVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzdqwVar = zzhkt.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (zzdqwVar == null) {
            zzdqwVar = (T) ((zzdqw) zzdtt.zzj(cls)).zza(zzd.zzhla, (Object) null, (Object) null);
            if (zzdqwVar == null) {
                throw new IllegalStateException();
            }
            zzhkt.put(cls, zzdqwVar);
        }
        return (T) zzdqwVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzdqw) zza(zzd.zzhla, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return zzdsr.zzbbf().zzax(this).equals(this, (zzdqw) obj);
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.zzhfq;
        if (i2 != 0) {
            return i2;
        }
        this.zzhfq = zzdsr.zzbbf().zzax(this).hashCode(this);
        return this.zzhfq;
    }

    @Override // com.google.android.gms.internal.ads.zzdsi
    public final boolean isInitialized() {
        return zza(this, Boolean.TRUE.booleanValue());
    }

    public String toString() {
        return zzdsh.zza(this, super.toString());
    }

    protected abstract Object zza(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzdpf
    final int zzaxh() {
        return this.zzhks;
    }

    @Override // com.google.android.gms.internal.ads.zzdsi
    public final /* synthetic */ zzdsg zzazs() {
        return (zzdqw) zza(zzd.zzhla, (Object) null, (Object) null);
    }

    protected final <MessageType extends zzdqw<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zzazt() {
        return (BuilderType) zza(zzd.zzhkz, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdsg
    public final int zzazu() {
        if (this.zzhks == -1) {
            this.zzhks = zzdsr.zzbbf().zzax(this).zzau(this);
        }
        return this.zzhks;
    }

    @Override // com.google.android.gms.internal.ads.zzdsg
    public final /* synthetic */ zzdsf zzazx() {
        zza zzaVar = (zza) zza(zzd.zzhkz, (Object) null, (Object) null);
        zzaVar.zza(this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdsg
    public final /* synthetic */ zzdsf zzazy() {
        return (zza) zza(zzd.zzhkz, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdsg
    public final void zzb(zzdqf zzdqfVar) {
        zzdsr.zzbbf().zzax(this).zza(this, zzdqg.zza(zzdqfVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    final void zzfi(int i2) {
        this.zzhks = i2;
    }
}
