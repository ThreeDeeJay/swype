.class public final Lcom/google/android/gms/internal/zzeg;
.super Lcom/google/android/gms/internal/zzeb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbhi:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzbhi:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdv;)V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzbhi:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/zzdw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzdw;-><init>(Lcom/google/android/gms/internal/zzdv;)V

    .line 0
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method