.class Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;
.super Ljava/lang/Object;
.source "PromptHelper.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

.field final synthetic val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)V
    .registers 3

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 28
    :try_start_7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    const/4 v2, 0x1

    # setter for: Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopped:Z
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->access$102(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;Z)Z

    .line 29
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 30
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    .line 31
    return-void

    .line 29
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public started(Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->started(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public stopped(Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 41
    :try_start_7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;

    const/4 v2, 0x1

    # setter for: Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->_stopped:Z
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;->access$102(Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper;Z)Z

    .line 42
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 43
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/PromptHelper$1;->val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->stopped(Ljava/lang/Object;)V

    .line 44
    return-void

    .line 42
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method
