.class final Lcom/facebook/internal/NativeProtocol$1;
.super Ljava/lang/Object;
.source "NativeProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 853
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$600()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 854
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->access$700(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 857
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 858
    return-void
.end method
