package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdnt;
import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public final class zzdnu<T_WRAPPER extends zzdnt<T_ENGINE>, T_ENGINE> {
    private static final Logger logger = Logger.getLogger(zzdnu.class.getName());
    private static final List<Provider> zzhdy;
    public static final zzdnu<zzdnw, Cipher> zzhdz;
    public static final zzdnu<zzdoa, Mac> zzhea;
    public static final zzdnu<zzdoc, Signature> zzheb;
    public static final zzdnu<zzdnz, MessageDigest> zzhec;
    public static final zzdnu<zzdnv, KeyAgreement> zzhed;
    public static final zzdnu<zzdnx, KeyPairGenerator> zzhee;
    public static final zzdnu<zzdny, KeyFactory> zzhef;
    private T_WRAPPER zzheg;
    private List<Provider> zzheh = zzhdy;
    private boolean zzhei = true;

    static {
        if (zzdos.zzaxd()) {
            String[] strArr = {ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 2; i2++) {
                String str = strArr[i2];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    logger.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            zzhdy = arrayList;
        } else {
            zzhdy = new ArrayList();
        }
        zzhdz = new zzdnu<>(new zzdnw());
        zzhea = new zzdnu<>(new zzdoa());
        zzheb = new zzdnu<>(new zzdoc());
        zzhec = new zzdnu<>(new zzdnz());
        zzhed = new zzdnu<>(new zzdnv());
        zzhee = new zzdnu<>(new zzdnx());
        zzhef = new zzdnu<>(new zzdny());
    }

    private zzdnu(T_WRAPPER t_wrapper) {
        this.zzheg = t_wrapper;
    }

    public final T_ENGINE zzhf(String str) {
        Iterator<Provider> it = this.zzheh.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return (T_ENGINE) this.zzheg.zza(str, it.next());
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                }
            }
        }
        if (this.zzhei) {
            return (T_ENGINE) this.zzheg.zza(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
