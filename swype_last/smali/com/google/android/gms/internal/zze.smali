.class public final Lcom/google/android/gms/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zze$zza;
    }
.end annotation


# instance fields
.field private final zzr:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zze$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zze$1;-><init>(Lcom/google/android/gms/internal/zze;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zze;->zzr:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;",
            "Lcom/google/android/gms/internal/zzm",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zze;->zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;",
            "Lcom/google/android/gms/internal/zzm",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzk;->zzal:Z

    .line 0
    const-string/jumbo v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zze;->zzr:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/zze$zza;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zze$zza;-><init>(Lcom/google/android/gms/internal/zze;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;",
            "Lcom/google/android/gms/internal/zzr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    const-string/jumbo v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/zzm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzm;-><init>(Lcom/google/android/gms/internal/zzr;)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zze;->zzr:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/zze$zza;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/google/android/gms/internal/zze$zza;-><init>(Lcom/google/android/gms/internal/zze;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
