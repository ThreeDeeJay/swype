.class public abstract Lcom/google/android/gms/internal/zznc$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zznc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zznc$zza$zza;
    }
.end annotation


# direct methods
.method public static zzch(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznc;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zznc;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zznc;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zznc$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznc$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_70

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zznb$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznb;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    :cond_2e
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zznc$zza;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_36
    const-string/jumbo v2, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zznb$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznb;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52

    sget-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;

    :cond_52
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zznc$zza;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_5a
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zznb$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznc$zza;->zza(Lcom/google/android/gms/internal/zznb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_36
        0x3 -> :sswitch_5a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
