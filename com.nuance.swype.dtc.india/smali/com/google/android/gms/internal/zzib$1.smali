.class final Lcom/google/android/gms/internal/zzib$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyh:Lcom/google/android/gms/internal/zzib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzib;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$1;->zzbyh:Lcom/google/android/gms/internal/zzib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$1;->zzbyh:Lcom/google/android/gms/internal/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib;->onStop()V

    return-void
.end method
