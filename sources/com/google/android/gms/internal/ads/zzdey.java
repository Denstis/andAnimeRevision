package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjx;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class zzdey {
    private static final Logger logger = Logger.getLogger(zzdey.class.getName());
    private static final ConcurrentMap<String, zza> zzgsx = new ConcurrentHashMap();
    private static final ConcurrentMap<String, Boolean> zzgsy = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzdef<?>> zzgsz = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, zzdex<?>> zzgta = new ConcurrentHashMap();

    interface zza {
        zzden<?> zzapw();

        Class<?> zzapx();

        Set<Class<?>> zzapy();

        <P> zzden<P> zzb(Class<P> cls);
    }

    private static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    private static <P> zzden<P> zza(String str, Class<P> cls) throws GeneralSecurityException {
        zza zzaVarZzgs = zzgs(str);
        if (cls == null) {
            return (zzden<P>) zzaVarZzgs.zzapw();
        }
        if (zzaVarZzgs.zzapy().contains(cls)) {
            return zzaVarZzgs.zzb(cls);
        }
        String name = cls.getName();
        String strValueOf = String.valueOf(zzaVarZzgs.zzapx());
        Set<Class<?>> setZzapy = zzaVarZzgs.zzapy();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : setZzapy) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(strValueOf).length() + String.valueOf(string).length());
        sb2.append("Primitive type ");
        sb2.append(name);
        sb2.append(" not supported by key manager of type ");
        sb2.append(strValueOf);
        sb2.append(", supported primitives: ");
        sb2.append(string);
        throw new GeneralSecurityException(sb2.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <P> zzdev<P> zza(zzdep zzdepVar, zzden<P> zzdenVar, Class<P> cls) throws GeneralSecurityException {
        Class cls2 = (Class) checkNotNull(cls);
        zzdfb.zzd(zzdepVar.zzapq());
        zzdev<P> zzdevVar = (zzdev<P>) zzdev.zza(cls2);
        for (zzdjx.zza zzaVar : zzdepVar.zzapq().zzauj()) {
            if (zzaVar.zzaps() == zzdjr.ENABLED) {
                zzdeu zzdeuVarZza = zzdevVar.zza(zza(zzaVar.zzauo().zzatu(), zzaVar.zzauo().zzatv(), cls2), zzaVar);
                if (zzaVar.zzaup() == zzdepVar.zzapq().zzaui()) {
                    zzdevVar.zza(zzdeuVarZza);
                }
            }
        }
        return zzdevVar;
    }

    public static synchronized zzdjn zza(zzdjt zzdjtVar) {
        zzden<?> zzdenVarZzgu;
        zzdenVarZzgu = zzgu(zzdjtVar.zzatu());
        if (!zzgsy.get(zzdjtVar.zzatu()).booleanValue()) {
            String strValueOf = String.valueOf(zzdjtVar.zzatu());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return zzdenVarZzgu.zzr(zzdjtVar.zzatv());
    }

    public static synchronized zzdsg zza(String str, zzdsg zzdsgVar) {
        zzden zzdenVarZza;
        zzdenVarZza = zza(str, (Class) null);
        if (!zzgsy.get(str).booleanValue()) {
            String strValueOf = String.valueOf(str);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return zzdenVarZza.zzb(zzdsgVar);
    }

    public static <P> P zza(zzdev<P> zzdevVar) throws GeneralSecurityException {
        zzdex<?> zzdexVar = zzgta.get(zzdevVar.zzapo());
        if (zzdexVar != null) {
            return (P) zzdexVar.zza(zzdevVar);
        }
        String strValueOf = String.valueOf(zzdevVar.zzapo().getName());
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "No wrapper found for ".concat(strValueOf) : new String("No wrapper found for "));
    }

    private static <P> P zza(String str, zzdpm zzdpmVar, Class<P> cls) {
        return (P) zza(str, cls).zzp(zzdpmVar);
    }

    public static <P> P zza(String str, zzdsg zzdsgVar, Class<P> cls) {
        return (P) zza(str, (Class) checkNotNull(cls)).zza(zzdsgVar);
    }

    public static <P> P zza(String str, byte[] bArr, Class<P> cls) {
        return (P) zza(str, zzdpm.zzy(bArr), (Class) checkNotNull(cls));
    }

    public static synchronized <P> void zza(zzden<P> zzdenVar) {
        zza((zzden) zzdenVar, true);
    }

    public static synchronized <P> void zza(zzden<P> zzdenVar, boolean z) {
        if (zzdenVar == null) {
            throw new IllegalArgumentException("key manager must be non-null.");
        }
        String keyType = zzdenVar.getKeyType();
        zza(keyType, zzdenVar.getClass(), z);
        if (!zzgsx.containsKey(keyType)) {
            zzgsx.put(keyType, new zzdfa(zzdenVar));
        }
        zzgsy.put(keyType, Boolean.valueOf(z));
    }

    public static synchronized <P> void zza(zzdex<P> zzdexVar) {
        if (zzdexVar == null) {
            throw new IllegalArgumentException("wrapper must be non-null");
        }
        Class<P> clsZzapo = zzdexVar.zzapo();
        if (zzgta.containsKey(clsZzapo)) {
            zzdex<?> zzdexVar2 = zzgta.get(clsZzapo);
            if (!zzdexVar.getClass().equals(zzdexVar2.getClass())) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(clsZzapo.toString());
                logger2.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", strValueOf.length() != 0 ? "Attempted overwrite of a registered SetWrapper for type ".concat(strValueOf) : new String("Attempted overwrite of a registered SetWrapper for type "));
                throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", clsZzapo.getName(), zzdexVar2.getClass().getName(), zzdexVar.getClass().getName()));
            }
        }
        zzgta.put(clsZzapo, zzdexVar);
    }

    public static synchronized void zza(String str, zzdef<?> zzdefVar) {
        if (zzgsz.containsKey(str.toLowerCase())) {
            if (!zzdefVar.getClass().equals(zzgsz.get(str.toLowerCase()).getClass())) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(str);
                logger2.logp(level, "com.google.crypto.tink.Registry", "addCatalogue", strValueOf.length() != 0 ? "Attempted overwrite of a catalogueName catalogue for name ".concat(strValueOf) : new String("Attempted overwrite of a catalogueName catalogue for name "));
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
                sb.append("catalogue for name ");
                sb.append(str);
                sb.append(" has been already registered");
                throw new GeneralSecurityException(sb.toString());
            }
        }
        zzgsz.put(str.toLowerCase(), zzdefVar);
    }

    private static synchronized <P> void zza(String str, Class<?> cls, boolean z) {
        if (zzgsx.containsKey(str)) {
            zza zzaVar = zzgsx.get(str);
            if (zzaVar.zzapx().equals(cls)) {
                if (!z || zzgsy.get(str).booleanValue()) {
                    return;
                }
                String strValueOf = String.valueOf(str);
                throw new GeneralSecurityException(strValueOf.length() != 0 ? "New keys are already disallowed for key type ".concat(strValueOf) : new String("New keys are already disallowed for key type "));
            }
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf2 = String.valueOf(str);
            logger2.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", strValueOf2.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(strValueOf2) : new String("Attempted overwrite of a registered key manager for key type "));
            throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzaVar.zzapx().getName(), cls.getName()));
        }
    }

    public static synchronized zzdsg zzb(zzdjt zzdjtVar) {
        zzden<?> zzdenVarZzgu;
        zzdenVarZzgu = zzgu(zzdjtVar.zzatu());
        if (!zzgsy.get(zzdjtVar.zzatu()).booleanValue()) {
            String strValueOf = String.valueOf(zzdjtVar.zzatu());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return zzdenVarZzgu.zzq(zzdjtVar.zzatv());
    }

    private static synchronized zza zzgs(String str) {
        if (!zzgsx.containsKey(str)) {
            String strValueOf = String.valueOf(str);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "No key manager found for key type ".concat(strValueOf) : new String("No key manager found for key type "));
        }
        return zzgsx.get(str);
    }

    public static zzdef<?> zzgt(String str) throws GeneralSecurityException {
        String strValueOf;
        String str2;
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        zzdef<?> zzdefVar = zzgsz.get(str.toLowerCase());
        if (zzdefVar != null) {
            return zzdefVar;
        }
        String strConcat = String.format("no catalogue found for %s. ", str);
        if (str.toLowerCase().startsWith("tinkaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call AeadConfig.register().");
        }
        if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
            strValueOf = String.valueOf(strConcat);
            str2 = "Maybe call DeterministicAeadConfig.register().";
        } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
            strValueOf = String.valueOf(strConcat);
            str2 = "Maybe call StreamingAeadConfig.register().";
        } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
            strValueOf = String.valueOf(strConcat);
            str2 = "Maybe call HybridConfig.register().";
        } else if (str.toLowerCase().startsWith("tinkmac")) {
            strValueOf = String.valueOf(strConcat);
            str2 = "Maybe call MacConfig.register().";
        } else {
            if (!str.toLowerCase().startsWith("tinkpublickeysign") && !str.toLowerCase().startsWith("tinkpublickeyverify")) {
                if (str.toLowerCase().startsWith("tink")) {
                    strValueOf = String.valueOf(strConcat);
                    str2 = "Maybe call TinkConfig.register().";
                }
                throw new GeneralSecurityException(strConcat);
            }
            strValueOf = String.valueOf(strConcat);
            str2 = "Maybe call SignatureConfig.register().";
        }
        strConcat = strValueOf.concat(str2);
        throw new GeneralSecurityException(strConcat);
    }

    private static zzden<?> zzgu(String str) {
        return zzgs(str).zzapw();
    }
}
