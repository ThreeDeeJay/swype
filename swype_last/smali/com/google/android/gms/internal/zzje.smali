.class public final Lcom/google/android/gms/internal/zzje;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzchf:Lcom/google/android/gms/internal/zzjf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzje;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzje;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzjf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzii()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzje;->zzh(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public final isLoaded()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzje;->zzf(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzje;->zzg(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    return-void
.end method

.method public final show()V
    .registers 4

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    .line 1000
    const-string/jumbo v2, "showAd must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    .line 0
    :cond_17
    :goto_17
    monitor-exit v1

    return-void

    .line 1000
    :cond_19
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzjf;->zzchi:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju;->zzbop:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzjf;->zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjm;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3a

    .line 1000
    if-eqz v2, :cond_17

    .line 3000
    :try_start_2c
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 1000
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->showVideo()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_3a

    goto :goto_17

    :catch_32
    move-exception v0

    :try_start_33
    const-string/jumbo v2, "Could not call showVideo."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 0
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->pause()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 7

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_41

    const/4 v0, 0x0

    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_3a

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjm;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_33
    .catchall {:try_start_9 .. :try_end_21} :catchall_49

    .line 5000
    :try_start_21
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 4000
    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/zzgk;->zzj(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_33
    .catchall {:try_start_21 .. :try_end_2a} :catchall_49

    goto :goto_15

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v4, "Unable to call Adapter.onContextChanged."

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_33
    .catchall {:try_start_2c .. :try_end_32} :catchall_49

    goto :goto_15

    .line 0
    :catch_33
    move-exception v0

    :try_start_34
    const-string/jumbo v1, "Unable to extract updated context."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->resume()V

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_49

    return-void

    :cond_41
    :try_start_41
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_33
    .catchall {:try_start_41 .. :try_end_47} :catchall_49

    move-object v1, v0

    goto :goto_7

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzchf:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->destroy()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method