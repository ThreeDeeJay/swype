.class public final Lcom/flurry/sdk/ko;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/flurry/sdk/ko;->get()Ljava/lang/Object;

    move-result-object v0

    .line 21
    instance-of v1, p1, Ljava/lang/ref/Reference;

    if-eqz v1, :cond_13

    .line 22
    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 23
    :goto_12
    return v0

    :cond_13
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/flurry/sdk/ko;->get()Ljava/lang/Object;

    move-result-object v0

    .line 29
    if-nez v0, :cond_b

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 31
    :goto_a
    return v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method