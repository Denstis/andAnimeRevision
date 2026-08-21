###### Class com.google.android.gms.internal.ads.zzdvt (com.google.android.gms.internal.ads.zzdvt)
.class public abstract Lcom/google/android/gms/internal/ads/zzdvt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdvt;
    .registers 3

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvq;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvq;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvs;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract zzhr(Ljava/lang/String;)V
.end method
