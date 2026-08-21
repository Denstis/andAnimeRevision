###### Class com.google.android.gms.internal.ads.zzamw (com.google.android.gms.internal.ads.zzamw)
.class final Lcom/google/android/gms/internal/ads/zzamw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdfn:Lcom/google/android/gms/internal/ads/zzamu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdfn:Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdfn:Lcom/google/android/gms/internal/ads/zzamu;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    return-void
.end method
