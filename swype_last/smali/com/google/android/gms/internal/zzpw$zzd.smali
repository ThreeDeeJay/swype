.class final Lcom/google/android/gms/internal/zzpw$zzd;
.super Lcom/google/android/gms/signin/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final tR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzb;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->tR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->tR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    if-nez v0, :cond_b

    :goto_a
    return-void

    .line 1000
    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    new-instance v2, Lcom/google/android/gms/internal/zzpw$zzd$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzpw$zzd$1;-><init>(Lcom/google/android/gms/internal/zzpw$zzd;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqa$zza;)V

    goto :goto_a
.end method
