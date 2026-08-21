###### Class com.google.android.gms.internal.ads.zzbf (com.google.android.gms.internal.ads.zzbf)
.class public final Lcom/google/android/gms/internal/ads/zzbf;
.super Lcom/google/android/gms/internal/ads/zzdvk;
.source ""


# instance fields
.field private zzcq:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/nio/ByteBuffer;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbf;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
