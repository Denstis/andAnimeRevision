###### Class com.google.android.gms.internal.ads.zzbas (com.google.android.gms.internal.ads.zzbas)
.class public final Lcom/google/android/gms/internal/ads/zzbas;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbf;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzazj;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzazk;)Lcom/google/android/gms/internal/ads/zzbax;
    .registers 6

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p3, v0, :cond_3a

    if-lez p2, :cond_3a

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzazk;->zzeam:Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string p3, "3"

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbag;->zzyq()I

    move-result p2

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzazk;->zzeap:I

    if-ge p2, p3, :cond_2a

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Lcom/google/android/gms/internal/ads/zzazj;Lcom/google/android/gms/internal/ads/zzazk;)V

    return-object p2

    :cond_2a
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzazk;->zzeaj:I

    if-ge p2, p3, :cond_34

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(Lcom/google/android/gms/internal/ads/zzazj;Lcom/google/android/gms/internal/ads/zzazk;)V

    return-object p2

    :cond_34
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbh;-><init>(Lcom/google/android/gms/internal/ads/zzazj;)V

    return-object p2

    :cond_3a
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(Lcom/google/android/gms/internal/ads/zzazj;)V

    return-object p2
.end method
