.class public final Lcom/google/android/gms/common/util/zzd;
.super Ljava/lang/Object;


# direct methods
.method public static zzq(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1000
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v1

    .line 0
    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_10
    invoke-static {p0}, Lcom/google/android/gms/internal/zzrp;->zzcq(Landroid/content/Context;)Lcom/google/android/gms/internal/zzro;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzro;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1b} :catch_22

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :catch_22
    move-exception v1

    goto :goto_9
.end method