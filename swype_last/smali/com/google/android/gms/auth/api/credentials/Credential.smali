.class public Lcom/google/android/gms/auth/api/credentials/Credential;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final cJ:Landroid/net/Uri;

.field final cK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field

.field final cL:Ljava/lang/String;

.field final cM:Ljava/lang/String;

.field final cN:Ljava/lang/String;

.field final cO:Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final mVersionCode:I

.field public final zzbgg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mVersionCode:I

    const-string/jumbo v0, "credential identifier cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "credential identifier cannot be empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzbgg:Ljava/lang/String;

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 p3, 0x0

    :cond_27
    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cJ:Landroid/net/Uri;

    if-nez p5, :cond_46

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_31
    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cK:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cL:Ljava/lang/String;

    if-eqz p6, :cond_4b

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_31

    :cond_4b
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {p7}, Lcom/google/android/gms/auth/api/credentials/internal/zzb;->zzfm(Ljava/lang/String;)Ljava/lang/String;

    :cond_54
    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cM:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cN:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cO:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "password and accountType cannot both be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzbgg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzbgg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cJ:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->cJ:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->cL:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cM:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->cM:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->cN:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_49
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzbgg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cJ:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->cN:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1000
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zza;->zza(Lcom/google/android/gms/auth/api/credentials/Credential;Landroid/os/Parcel;I)V

    return-void
.end method
