###### Class com.google.android.gms.internal.base.zai (com.google.android.gms.internal.base.zai)
.class final Lcom/google/android/gms/internal/base/zai;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# instance fields
.field mChangingConfigurations:I

.field zanw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/zai;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/base/zai;->mChangingConfigurations:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zai;->mChangingConfigurations:I

    iget p1, p1, Lcom/google/android/gms/internal/base/zai;->zanw:I

    iput p1, p0, Lcom/google/android/gms/internal/base/zai;->zanw:I

    :cond_d
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/base/zai;->mChangingConfigurations:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/base/zae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/base/zae;-><init>(Lcom/google/android/gms/internal/base/zai;)V

    return-object v0
.end method
