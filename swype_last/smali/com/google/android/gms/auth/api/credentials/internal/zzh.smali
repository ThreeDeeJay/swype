.class public final Lcom/google/android/gms/auth/api/credentials/internal/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    .line 0
    .line 1000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    .line 0
    const/4 v1, 0x1

    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;->di:Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 0
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$377a007(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    .line 3000
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 0
    .line 5000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcm(Landroid/os/Parcel;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_29

    .line 6000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7000
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 5000
    sparse-switch v4, :sswitch_data_52

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_6

    :sswitch_1b
    sget-object v0, Lcom/google/android/gms/auth/api/credentials/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/Credential;

    goto :goto_6

    :sswitch_24
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_6

    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_4b

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_4b
    new-instance v2, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;-><init>(ILcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 0
    return-object v2

    .line 5000
    nop

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_1b
        0x3e8 -> :sswitch_24
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 4000
    new-array v0, p1, [Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;

    .line 0
    return-object v0
.end method
