.class public abstract Lcom/google/android/gms/internal/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzan;


# instance fields
.field protected zzafd:Landroid/view/MotionEvent;

.field protected zzafe:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected zzaff:J

.field protected zzafg:J

.field protected zzafh:J

.field protected zzafi:J

.field protected zzafj:J

.field private zzafk:Z

.field protected zzafl:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzak;->zzar()V

    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1c .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_26
.end method


# virtual methods
.method final zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    if-eqz p3, :cond_1b

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzao;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    move-object v3, v0

    :goto_d
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzae$zza;->aM()I

    move-result v0

    if-nez v0, :cond_21

    :cond_15
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzao;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v0

    move-object v3, v0

    goto :goto_d

    .line 3000
    :cond_21
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbl:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 3000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    .line 0
    :goto_34
    if-nez v0, :cond_54

    move v0, v1

    :goto_37
    invoke-static {v3, p2, v0}, Lcom/google/android/gms/internal/zzak;->zza(Lcom/google/android/gms/internal/zzae$zza;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 3000
    :cond_3c
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbu:Lcom/google/android/gms/internal/zzcy;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 3000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_4b} :catch_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_4b} :catch_5c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4b} :catch_62

    move-result v0

    if-eqz v0, :cond_52

    if-eqz p3, :cond_52

    move v0, v1

    goto :goto_34

    :cond_52
    move v0, v2

    goto :goto_34

    :cond_54
    move v0, v2

    .line 0
    goto :goto_37

    :catch_56
    move-exception v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :catch_5c
    move-exception v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :catch_62
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public final zza(III)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_d
    const-wide/16 v2, 0x0

    move/from16 v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    if-eqz v0, :cond_33

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_19

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_c6

    :cond_3a
    :goto_3a
    return-void

    :pswitch_3b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5c
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbt:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 1000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_82
    if-ltz v1, :cond_a7

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.ads."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.gms."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    add-int/lit8 v1, v1, -0x1

    goto :goto_82

    :cond_a7
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafj:J

    goto :goto_3a

    .line 0
    :pswitch_ab
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    goto :goto_3a

    :pswitch_b1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    goto :goto_3a

    :pswitch_b7
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    goto/16 :goto_3a

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_3b
        :pswitch_b7
        :pswitch_b1
    .end packed-switch
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzao;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzao;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;
.end method

.method protected abstract zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;
.end method
