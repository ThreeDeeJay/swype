.class public abstract Lcom/google/android/gms/ads/internal/client/zzac$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzac$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/ads/internal/client/zzac$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzu(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzac;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzac;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzac;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzac$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzac$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_44

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string/jumbo v1, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_10
    const-string/jumbo v1, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzac$zza;->zzjb()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_1d
    const-string/jumbo v1, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzac$zza;->zzjc()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_2a
    const-string/jumbo v1, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzac$zza;->zzjd()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_37
    const-string/jumbo v1, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzac$zza;->onVideoEnd()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_37
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
