.class public abstract Lcom/google/android/gms/common/internal/zzm;
.super Ljava/lang/Object;


# static fields
.field private static final yL:Ljava/lang/Object;

.field private static yM:Lcom/google/android/gms/common/internal/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzm;->yL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzce(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;
    .locals 3

    sget-object v1, Lcom/google/android/gms/common/internal/zzm;->yL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/internal/zzm;->yM:Lcom/google/android/gms/common/internal/zzm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/zzn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/internal/zzm;->yM:Lcom/google/android/gms/common/internal/zzm;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/internal/zzm;->yM:Lcom/google/android/gms/common/internal/zzm;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract zzb$3185ab25(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V
.end method

.method public abstract zzb$9b3168c(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
.end method
