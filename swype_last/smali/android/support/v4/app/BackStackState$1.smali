.class final Landroid/support/v4/app/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/BackStackState;
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
        "Landroid/support/v4/app/BackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 178
    .line 2180
    new-instance v0, Landroid/support/v4/app/BackStackState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    .line 178
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 178
    .line 1184
    new-array v0, p1, [Landroid/support/v4/app/BackStackState;

    .line 178
    return-object v0
.end method
