package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import b.e.g;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbur {
    private Bundle extras;
    private zzaba zzcwc;
    private List<?> zzeiq;
    private double zzeit;
    private float zzejf;
    private IObjectWrapper zzfeu;
    private int zzfli;
    private zzwr zzflj;
    private View zzflk;
    private zzxk zzfll;
    private zzbbw zzflm;
    private zzbbw zzfln;
    private View zzflo;
    private IObjectWrapper zzflp;
    private zzabi zzflq;
    private zzabi zzflr;
    private String zzfls;
    private String zzlr;
    private g<String, zzaau> zzflt = new g<>();
    private g<String, String> zzflu = new g<>();
    private List<zzxk> zzcwr = Collections.emptyList();

    private final synchronized void setMediaContentAspectRatio(float f2) {
        this.zzejf = f2;
    }

    public static zzbur zza(zzakg zzakgVar) {
        try {
            zzwr videoController = zzakgVar.getVideoController();
            zzaba zzabaVarZzqo = zzakgVar.zzqo();
            View view = (View) zzat(zzakgVar.zzry());
            String headline = zzakgVar.getHeadline();
            List<?> images = zzakgVar.getImages();
            String body = zzakgVar.getBody();
            Bundle extras = zzakgVar.getExtras();
            String callToAction = zzakgVar.getCallToAction();
            View view2 = (View) zzat(zzakgVar.zzrz());
            IObjectWrapper iObjectWrapperZzqp = zzakgVar.zzqp();
            String store = zzakgVar.getStore();
            String price = zzakgVar.getPrice();
            double starRating = zzakgVar.getStarRating();
            zzabi zzabiVarZzqn = zzakgVar.zzqn();
            zzbur zzburVar = new zzbur();
            zzburVar.zzfli = 2;
            zzburVar.zzflj = videoController;
            zzburVar.zzcwc = zzabaVarZzqo;
            zzburVar.zzflk = view;
            zzburVar.zzo("headline", headline);
            zzburVar.zzeiq = images;
            zzburVar.zzo(TtmlNode.TAG_BODY, body);
            zzburVar.extras = extras;
            zzburVar.zzo("call_to_action", callToAction);
            zzburVar.zzflo = view2;
            zzburVar.zzflp = iObjectWrapperZzqp;
            zzburVar.zzo("store", store);
            zzburVar.zzo(FirebaseAnalytics.Param.PRICE, price);
            zzburVar.zzeit = starRating;
            zzburVar.zzflq = zzabiVarZzqn;
            return zzburVar;
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    public static zzbur zza(zzakl zzaklVar) {
        try {
            zzwr videoController = zzaklVar.getVideoController();
            zzaba zzabaVarZzqo = zzaklVar.zzqo();
            View view = (View) zzat(zzaklVar.zzry());
            String headline = zzaklVar.getHeadline();
            List<?> images = zzaklVar.getImages();
            String body = zzaklVar.getBody();
            Bundle extras = zzaklVar.getExtras();
            String callToAction = zzaklVar.getCallToAction();
            View view2 = (View) zzat(zzaklVar.zzrz());
            IObjectWrapper iObjectWrapperZzqp = zzaklVar.zzqp();
            String advertiser = zzaklVar.getAdvertiser();
            zzabi zzabiVarZzqq = zzaklVar.zzqq();
            zzbur zzburVar = new zzbur();
            zzburVar.zzfli = 1;
            zzburVar.zzflj = videoController;
            zzburVar.zzcwc = zzabaVarZzqo;
            zzburVar.zzflk = view;
            zzburVar.zzo("headline", headline);
            zzburVar.zzeiq = images;
            zzburVar.zzo(TtmlNode.TAG_BODY, body);
            zzburVar.extras = extras;
            zzburVar.zzo("call_to_action", callToAction);
            zzburVar.zzflo = view2;
            zzburVar.zzflp = iObjectWrapperZzqp;
            zzburVar.zzo("advertiser", advertiser);
            zzburVar.zzflr = zzabiVarZzqq;
            return zzburVar;
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    private static zzbur zza(zzwr zzwrVar, zzaba zzabaVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d2, zzabi zzabiVar, String str6, float f2) {
        zzbur zzburVar = new zzbur();
        zzburVar.zzfli = 6;
        zzburVar.zzflj = zzwrVar;
        zzburVar.zzcwc = zzabaVar;
        zzburVar.zzflk = view;
        zzburVar.zzo("headline", str);
        zzburVar.zzeiq = list;
        zzburVar.zzo(TtmlNode.TAG_BODY, str2);
        zzburVar.extras = bundle;
        zzburVar.zzo("call_to_action", str3);
        zzburVar.zzflo = view2;
        zzburVar.zzflp = iObjectWrapper;
        zzburVar.zzo("store", str4);
        zzburVar.zzo(FirebaseAnalytics.Param.PRICE, str5);
        zzburVar.zzeit = d2;
        zzburVar.zzflq = zzabiVar;
        zzburVar.zzo("advertiser", str6);
        zzburVar.setMediaContentAspectRatio(f2);
        return zzburVar;
    }

    private static <T> T zzat(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static zzbur zzb(zzakg zzakgVar) {
        try {
            return zza(zzakgVar.getVideoController(), zzakgVar.zzqo(), (View) zzat(zzakgVar.zzry()), zzakgVar.getHeadline(), zzakgVar.getImages(), zzakgVar.getBody(), zzakgVar.getExtras(), zzakgVar.getCallToAction(), (View) zzat(zzakgVar.zzrz()), zzakgVar.zzqp(), zzakgVar.getStore(), zzakgVar.getPrice(), zzakgVar.getStarRating(), zzakgVar.zzqn(), null, 0.0f);
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to get native ad assets from app install ad mapper", e2);
            return null;
        }
    }

    public static zzbur zzb(zzakl zzaklVar) {
        try {
            return zza(zzaklVar.getVideoController(), zzaklVar.zzqo(), (View) zzat(zzaklVar.zzry()), zzaklVar.getHeadline(), zzaklVar.getImages(), zzaklVar.getBody(), zzaklVar.getExtras(), zzaklVar.getCallToAction(), (View) zzat(zzaklVar.zzrz()), zzaklVar.zzqp(), null, null, -1.0d, zzaklVar.zzqq(), zzaklVar.getAdvertiser(), 0.0f);
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to get native ad assets from content ad mapper", e2);
            return null;
        }
    }

    public static zzbur zzb(zzakm zzakmVar) {
        try {
            return zza(zzakmVar.getVideoController(), zzakmVar.zzqo(), (View) zzat(zzakmVar.zzry()), zzakmVar.getHeadline(), zzakmVar.getImages(), zzakmVar.getBody(), zzakmVar.getExtras(), zzakmVar.getCallToAction(), (View) zzat(zzakmVar.zzrz()), zzakmVar.zzqp(), zzakmVar.getStore(), zzakmVar.getPrice(), zzakmVar.getStarRating(), zzakmVar.zzqn(), zzakmVar.getAdvertiser(), zzakmVar.getMediaContentAspectRatio());
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to get native ad assets from unified ad mapper", e2);
            return null;
        }
    }

    private final synchronized String zzft(String str) {
        return this.zzflu.get(str);
    }

    public final synchronized void destroy() {
        if (this.zzflm != null) {
            this.zzflm.destroy();
            this.zzflm = null;
        }
        if (this.zzfln != null) {
            this.zzfln.destroy();
            this.zzfln = null;
        }
        this.zzfeu = null;
        this.zzflt.clear();
        this.zzflu.clear();
        this.zzflj = null;
        this.zzcwc = null;
        this.zzflk = null;
        this.zzeiq = null;
        this.extras = null;
        this.zzflo = null;
        this.zzflp = null;
        this.zzflq = null;
        this.zzflr = null;
        this.zzfls = null;
    }

    public final synchronized String getAdvertiser() {
        return zzft("advertiser");
    }

    public final synchronized String getBody() {
        return zzft(TtmlNode.TAG_BODY);
    }

    public final synchronized String getCallToAction() {
        return zzft("call_to_action");
    }

    public final synchronized String getCustomTemplateId() {
        return this.zzfls;
    }

    public final synchronized Bundle getExtras() {
        if (this.extras == null) {
            this.extras = new Bundle();
        }
        return this.extras;
    }

    public final synchronized String getHeadline() {
        return zzft("headline");
    }

    public final synchronized List<?> getImages() {
        return this.zzeiq;
    }

    public final synchronized float getMediaContentAspectRatio() {
        return this.zzejf;
    }

    public final synchronized List<zzxk> getMuteThisAdReasons() {
        return this.zzcwr;
    }

    public final synchronized String getPrice() {
        return zzft(FirebaseAnalytics.Param.PRICE);
    }

    public final synchronized double getStarRating() {
        return this.zzeit;
    }

    public final synchronized String getStore() {
        return zzft("store");
    }

    public final synchronized zzwr getVideoController() {
        return this.zzflj;
    }

    public final synchronized void setImages(List<zzaau> list) {
        this.zzeiq = list;
    }

    public final synchronized void setStarRating(double d2) {
        this.zzeit = d2;
    }

    public final synchronized void zza(zzaba zzabaVar) {
        this.zzcwc = zzabaVar;
    }

    public final synchronized void zza(zzabi zzabiVar) {
        this.zzflq = zzabiVar;
    }

    public final synchronized void zza(zzxk zzxkVar) {
        this.zzfll = zzxkVar;
    }

    public final synchronized void zza(String str, zzaau zzaauVar) {
        if (zzaauVar == null) {
            this.zzflt.remove(str);
        } else {
            this.zzflt.put(str, zzaauVar);
        }
    }

    public final synchronized void zzaa(View view) {
        this.zzflo = view;
    }

    public final synchronized int zzahp() {
        return this.zzfli;
    }

    public final synchronized View zzahq() {
        return this.zzflk;
    }

    public final zzabi zzahr() {
        List<?> list = this.zzeiq;
        if (list != null && list.size() != 0) {
            Object obj = this.zzeiq.get(0);
            if (obj instanceof IBinder) {
                return zzabl.zzm((IBinder) obj);
            }
        }
        return null;
    }

    public final synchronized zzxk zzahs() {
        return this.zzfll;
    }

    public final synchronized View zzaht() {
        return this.zzflo;
    }

    public final synchronized zzbbw zzahu() {
        return this.zzflm;
    }

    public final synchronized zzbbw zzahv() {
        return this.zzfln;
    }

    public final synchronized IObjectWrapper zzahw() {
        return this.zzfeu;
    }

    public final synchronized g<String, zzaau> zzahx() {
        return this.zzflt;
    }

    public final synchronized String zzahy() {
        return this.zzlr;
    }

    public final synchronized g<String, String> zzahz() {
        return this.zzflu;
    }

    public final synchronized void zzas(IObjectWrapper iObjectWrapper) {
        this.zzfeu = iObjectWrapper;
    }

    public final synchronized void zzb(zzabi zzabiVar) {
        this.zzflr = zzabiVar;
    }

    public final synchronized void zzb(zzwr zzwrVar) {
        this.zzflj = zzwrVar;
    }

    public final synchronized void zzdg(int i2) {
        this.zzfli = i2;
    }

    public final synchronized void zzf(List<zzxk> list) {
        this.zzcwr = list;
    }

    public final synchronized void zzfr(String str) {
        this.zzfls = str;
    }

    public final synchronized void zzfs(String str) {
        this.zzlr = str;
    }

    public final synchronized void zzi(zzbbw zzbbwVar) {
        this.zzflm = zzbbwVar;
    }

    public final synchronized void zzj(zzbbw zzbbwVar) {
        this.zzfln = zzbbwVar;
    }

    public final synchronized void zzo(String str, String str2) {
        if (str2 == null) {
            this.zzflu.remove(str);
        } else {
            this.zzflu.put(str, str2);
        }
    }

    public final synchronized zzabi zzqn() {
        return this.zzflq;
    }

    public final synchronized zzaba zzqo() {
        return this.zzcwc;
    }

    public final synchronized IObjectWrapper zzqp() {
        return this.zzflp;
    }

    public final synchronized zzabi zzqq() {
        return this.zzflr;
    }
}
