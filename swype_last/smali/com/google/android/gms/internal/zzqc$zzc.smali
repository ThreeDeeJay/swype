.class final Lcom/google/android/gms/internal/zzqc$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field final rQ:Lcom/google/android/gms/internal/zzpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpj",
            "<TO;>;"
        }
    .end annotation
.end field

.field final synthetic uQ:Lcom/google/android/gms/internal/zzqc;

.field final uS:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzpi;",
            ">;"
        }
    .end annotation
.end field

.field final uT:Lcom/google/android/gms/common/api/Api$zze;

.field private final uU:Lcom/google/android/gms/common/api/Api$zzb;

.field final uV:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;"
        }
    .end annotation
.end field

.field final uW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpl;",
            ">;"
        }
    .end annotation
.end field

.field private final uX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzpm$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field uY:Lcom/google/android/gms/common/ConnectionResult;

.field ud:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/zzc;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    iget-object v0, p2, Lcom/google/android/gms/common/api/zzc;->pN:Lcom/google/android/gms/common/api/Api;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanq()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4000
    iget-object v3, p2, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    .line 5000
    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaoh()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    .line 6000
    iget-object v4, p2, Lcom/google/android/gms/common/api/zzc;->rP:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v5, p0

    move-object v6, p0

    .line 1000
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzah;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzah;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzah;->zn:Lcom/google/android/gms/common/api/Api$zzg;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    .line 8000
    :goto_59
    iget-object v0, p2, Lcom/google/android/gms/common/api/zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    return-void

    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_59
.end method

.method private zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzpl;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method final connect()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanu()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzk(Lcom/google/android/gms/internal/zzqc;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zzi(Lcom/google/android/gms/internal/zzqc;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzh(Lcom/google/android/gms/internal/zzqc;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzk(Lcom/google/android/gms/internal/zzqc;)I

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zzk(Lcom/google/android/gms/internal/zzqc;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_10

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzqc$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzqc$zzd;-><init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzpj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_10
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 0
    .line 9000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqk()V

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpm$zza;

    :try_start_37
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzpm$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_2b

    :catch_3d
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionSuspended(I)V

    goto :goto_2b

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 10000
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzc(Lcom/google/android/gms/internal/zzpi;)V

    goto :goto_4c

    .line 0
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaql()V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7

    .prologue
    .line 0
    .line 12000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/zzqc;->zzaqf()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_23
    invoke-static {}, Lcom/google/android/gms/internal/zzqc;->zzd$7270594f()Lcom/google/android/gms/internal/zzpr;

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzqc;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 13000
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    const/16 v1, 0x12

    if-ne v0, v1, :cond_38

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    :cond_38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzb(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d

    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    .line 14000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzpj;->pN:Lcom/google/android/gms/common/api/Api;

    .line 15000
    iget-object v2, v2, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1d
.end method

.method public final onConnectionSuspended(I)V
    .registers 6

    .prologue
    .line 0
    .line 11000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzb(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzc(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;I)I

    return-void
.end method

.method final zzab(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpi;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method final zzaqk()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    :cond_21
    return-void
.end method

.method final zzaql()V
    .registers 5

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzj(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final zzaqm()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_44

    move v1, v2

    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    sget-object v3, Lcom/google/android/gms/internal/zzqy;->vF:[Lcom/google/android/gms/internal/zzpm$zza;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzpm$zza;

    array-length v4, v0

    move v3, v2

    :goto_34
    if-ge v3, v4, :cond_48

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzpm$zza;->isReady()Z

    move-result v5

    if-nez v5, :cond_45

    const/4 v0, 0x1

    .line 0
    :goto_3f
    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaql()V

    :cond_44
    :goto_44
    return-void

    .line 16000
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_48
    move v0, v2

    goto :goto_3f

    .line 0
    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_44
.end method

.method final zzc(Lcom/google/android/gms/internal/zzpi;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpi;->zza(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/zzpi;->iq:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_46

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_85

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    :goto_25
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpi$zza;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqm;->zzaqu()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_36} :catch_3c

    :cond_36
    :goto_36
    :try_start_36
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpi;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3b
    .catch Landroid/os/DeadObjectException; {:try_start_36 .. :try_end_3b} :catch_7b

    :goto_3b
    return-void

    :catch_3c
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Listener registration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    iget v1, p1, Lcom/google/android/gms/internal/zzpi;->iq:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    :try_start_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpi$zza;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    check-cast v2, Lcom/google/android/gms/internal/zzqm;

    if-eqz v1, :cond_71

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqm;->zzaqu()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_66} :catch_67

    goto :goto_36

    :catch_67
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Listener unregistration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    :try_start_71
    const-string/jumbo v1, "GoogleApiManager"

    const-string/jumbo v2, "Received call to unregister a listener without a matching registration call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/ClassCastException; {:try_start_71 .. :try_end_7a} :catch_67

    goto :goto_36

    :catch_7b
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionSuspended(I)V

    goto :goto_3b

    :cond_85
    move-object v3, v1

    goto :goto_25
.end method

.method public final zzf(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    iget v2, v0, Lcom/google/android/gms/internal/zzpi;->sx:I

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/google/android/gms/internal/zzpi;->iq:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpi;->cancel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqy;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez p2, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzf(Lcom/google/android/gms/internal/zzqc;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzg(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzqc;->zzaqf()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zze(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw v0
.end method