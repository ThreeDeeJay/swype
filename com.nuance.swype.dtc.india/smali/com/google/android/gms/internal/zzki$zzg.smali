.class public Lcom/google/android/gms/internal/zzki$zzg;
.super Lcom/google/android/gms/internal/zzki$zze;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzki$zze;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public final zztm()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method
