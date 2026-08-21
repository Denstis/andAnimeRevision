###### Class com.google.android.gms.ads.consent.ConsentSdkUtil (com.google.android.gms.ads.consent.ConsentSdkUtil)
.class public Lcom/google/android/gms/ads/consent/ConsentSdkUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/consent/ConsentSdkUtil$ConsentInformationCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestConsentInformation(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/ads/consent/ConsentSdkUtil$ConsentInformationCallback;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/ads/consent/ConsentSdkUtil$ConsentInformationCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzzl;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzzl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzl;->zza(Ljava/util/Map;Lcom/google/android/gms/ads/consent/ConsentSdkUtil$ConsentInformationCallback;)V

    return-void
.end method

###### Class com.google.android.gms.ads.consent.ConsentSdkUtil.ConsentInformationCallback (com.google.android.gms.ads.consent.ConsentSdkUtil$ConsentInformationCallback)
.class public interface abstract Lcom/google/android/gms/ads/consent/ConsentSdkUtil$ConsentInformationCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/consent/ConsentSdkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConsentInformationCallback"
.end annotation


# virtual methods
.method public abstract onFailure(I)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
