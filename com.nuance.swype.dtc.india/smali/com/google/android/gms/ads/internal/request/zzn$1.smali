.class final Lcom/google/android/gms/ads/internal/request/zzn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzn;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzake:Lcom/google/android/gms/internal/zzju$zza;

.field final synthetic zzcdl:Lcom/google/android/gms/ads/internal/request/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzju$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcdl:Lcom/google/android/gms/ads/internal/request/zzn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcdl:Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zza(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/ads/internal/request/zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzju$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcdl:Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zzb(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcdl:Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zzb(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->release()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcdl:Lcom/google/android/gms/ads/internal/request/zzn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/zzn;->zza(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzfs$zzc;)Lcom/google/android/gms/internal/zzfs$zzc;

    :cond_0
    return-void
.end method
