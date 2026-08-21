###### Class com.google.android.gms.common.internal.zad (com.google.android.gms.common.internal.zad)
.class final Lcom/google/android/gms/common/internal/zad;
.super Lcom/google/android/gms/common/internal/DialogRedirect;
.source ""


# instance fields
.field private final synthetic val$fragment:Lb/k/a/d;

.field private final synthetic val$requestCode:I

.field private final synthetic zaoh:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lb/k/a/d;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zad;->zaoh:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zad;->val$fragment:Lb/k/a/d;

    iput p3, p0, Lcom/google/android/gms/common/internal/zad;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zad;->zaoh:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zad;->val$fragment:Lb/k/a/d;

    iget v2, p0, Lcom/google/android/gms/common/internal/zad;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Lb/k/a/d;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
