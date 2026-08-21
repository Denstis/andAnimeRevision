###### Class com.google.android.gms.internal.ads.zzdee (com.google.android.gms.internal.ads.zzdee)
.class public final Lcom/google/android/gms/internal/ads/zzdee;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdju;->zzaug()Lcom/google/android/gms/internal/ads/zzdju$zza;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzdju$zza;->zzgz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdju$zza;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string p4, "type.googleapis.com/google.crypto.tink."

    if-eqz p3, :cond_19

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1e

    :cond_19
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1e
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdju$zza;->zzha(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdju$zza;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdju$zza;->zzeq(I)Lcom/google/android/gms/internal/ads/zzdju$zza;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdju$zza;->zzbg(Z)Lcom/google/android/gms/internal/ads/zzdju$zza;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdju$zza;->zzhb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdju$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdju;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdkl;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavj()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzatu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzauc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzauf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzauf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdey;->zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdef;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdef;->zzapm()Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzdex;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzatu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzauc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzaud()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdef;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzden;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzaue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzden;Z)V

    goto :goto_8

    :cond_59
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    return-void
.end method
