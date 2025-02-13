.class public Lcom/google/android/gms/ads/internal/request/zzd$zzb;
.super Lcom/google/android/gms/ads/internal/request/zzd;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzb;
.implements Lcom/google/android/gms/common/internal/zzd$zzc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzcaj:Lcom/google/android/gms/internal/zzla;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzla",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field protected zzcan:Lcom/google/android/gms/ads/internal/request/zze;

.field private zzcao:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/zzla",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcaj:Lcom/google/android/gms/internal/zzla;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzayy:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcao:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgc()Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzko;->zztq()Landroid/os/Looper;

    move-result-object v2

    :goto_2f
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnl:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/request/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/ads/internal/request/zze;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzarx()V

    .line 0
    return-void

    :cond_43
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_2f
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpy()Ljava/lang/Object;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 8

    .prologue
    .line 0
    const-string/jumbo v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    .line 4000
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcaj:Lcom/google/android/gms/internal/zzla;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzd$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkj;->zzpy()Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "action"

    const-string/jumbo v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 3

    const-string/jumbo v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzpy()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpv()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzqw()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/zze;->isConnected()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/zze;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/zze;->disconnect()V

    :cond_19
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcao:Z

    if-eqz v2, :cond_48

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgc()Lcom/google/android/gms/internal/zzko;

    move-result-object v2

    .line 3000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzko;->zzail:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_4d

    :try_start_27
    iget v4, v2, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    if-lez v4, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    const-string/jumbo v4, "Invalid state: release() called more times than expected."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget v0, v2, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/google/android/gms/internal/zzko;->zzcmn:I

    if-nez v0, :cond_44

    iget-object v0, v2, Lcom/google/android/gms/internal/zzko;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzko$1;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/zzko$1;-><init>(Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_4a

    .line 0
    const/4 v0, 0x0

    :try_start_46
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcao:Z

    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4d

    return-void

    .line 3000
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0

    .line 0
    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public zzqx()Lcom/google/android/gms/ads/internal/request/zzk;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzrb()Lcom/google/android/gms/ads/internal/request/zzk;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_b
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_8} :catch_12
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    move-result-object v0

    :try_start_9
    monitor-exit v1

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    :goto_c
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_a

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0

    :catch_12
    move-exception v0

    goto :goto_c
.end method
