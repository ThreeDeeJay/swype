.class abstract Lcom/google/android/gms/common/zzd$zza;
.super Lcom/google/android/gms/common/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private rk:I


# direct methods
.method protected constructor <init>([B)V
    .registers 15

    .prologue
    const/16 v12, 0x19

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzs$zza;-><init>()V

    array-length v0, p1

    if-eq v0, v12, :cond_73

    const-string/jumbo v7, "GoogleCertificates"

    array-length v8, p1

    array-length v4, p1

    .line 1000
    if-eqz p1, :cond_1b

    array-length v0, p1

    if-eqz v0, :cond_1b

    if-lez v4, :cond_1b

    add-int/lit8 v0, v4, 0x0

    array-length v3, p1

    if-le v0, v3, :cond_7a

    :cond_1b
    const/4 v0, 0x0

    .line 0
    :goto_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cert hash data has incorrect length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "):\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v7, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, v1, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    array-length v0, p1

    if-ne v0, v12, :cond_59

    move v1, v2

    :cond_59
    array-length v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "cert hash data has incorrect length. length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    :cond_73
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/zzd$zza;->rk:I

    return-void

    .line 1000
    :cond_7a
    add-int/lit8 v0, v4, 0x10

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x39

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    move v0, v4

    move v6, v1

    :goto_8a
    if-lez v0, :cond_ed

    if-nez v6, :cond_e2

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_cf

    const-string/jumbo v5, "%04X:"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a4
    :goto_a4
    const-string/jumbo v5, " %02X"

    new-array v10, v2, [Ljava/lang/Object;

    aget-byte v11, p1, v3

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v0, v6, 0x1

    const/16 v6, 0x10

    if-eq v0, v6, :cond_c4

    if-nez v5, :cond_ca

    :cond_c4
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_ca
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v0, v5

    goto :goto_8a

    :cond_cf
    const-string/jumbo v5, "%08X:"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a4

    :cond_e2
    const/16 v5, 0x8

    if-ne v6, v5, :cond_a4

    const-string/jumbo v5, " -"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a4

    :cond_ed
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c
.end method

.method protected static zzgv(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzs;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    check-cast p1, Lcom/google/android/gms/common/internal/zzs;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzs;->zzanl()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzd$zza;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_17

    move v0, v1

    goto :goto_8

    :cond_17
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzs;->zzank()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_8

    :cond_1f
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzd$zza;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2c} :catch_2e

    move-result v0

    goto :goto_8

    :catch_2e
    move-exception v0

    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "iCertData failed to retrive data from remote"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_8
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/zzd$zza;->rk:I

    return v0
.end method

.method public final zzank()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzd$zza;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public final zzanl()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzd$zza;->hashCode()I

    move-result v0

    return v0
.end method
