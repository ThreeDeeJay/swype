.class final Lcom/localytics/android/PushCampaign$1;
.super Ljava/lang/Object;
.source "PushCampaign.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/PushCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/localytics/android/PushCampaign;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/PushCampaign;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 190
    new-instance v0, Lcom/localytics/android/PushCampaign;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/localytics/android/PushCampaign;-><init>(Landroid/os/Parcel;Lcom/localytics/android/PushCampaign$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushCampaign$1;->createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/PushCampaign;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/localytics/android/PushCampaign;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 195
    new-array v0, p1, [Lcom/localytics/android/PushCampaign;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushCampaign$1;->newArray(I)[Lcom/localytics/android/PushCampaign;

    move-result-object v0

    return-object v0
.end method
