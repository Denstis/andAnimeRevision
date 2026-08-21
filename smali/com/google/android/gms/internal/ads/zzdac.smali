###### Class com.google.android.gms.internal.ads.zzdac (com.google.android.gms.internal.ads.zzdac)
.class public Lcom/google/android/gms/internal/ads/zzdac;
.super Landroid/os/Handler;
.source ""


# static fields
.field private static volatile zzgok:Lcom/google/android/gms/internal/ads/zzdaf;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdac;->zzb(Landroid/os/Message;)V

    return-void
.end method

.method protected zzb(Landroid/os/Message;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
