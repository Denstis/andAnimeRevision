###### Class com.google.android.gms.common.util.Clock$$CC (com.google.android.gms.common.util.Clock$$CC)
.class public synthetic Lcom/google/android/gms/common/util/Clock$$CC;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static currentThreadTimeMillis(Lcom/google/android/gms/common/util/Clock;)J
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
