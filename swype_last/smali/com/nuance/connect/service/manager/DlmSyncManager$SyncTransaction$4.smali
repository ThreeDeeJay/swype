.class Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$2102(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_fd

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Ignoring pull response because the core is not in use"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "87"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pullResponse coreId="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v4}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " numEvents="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_95
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c6

    :try_start_9b
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_9b .. :try_end_a2} :catch_a5

    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    :catch_a5
    move-exception v2

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v4}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pullResponse() Issue loading object: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_a2

    :cond_c6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager;->sendReceivedEvents(ILjava/util/ArrayList;)V
    invoke-static {v0, v1, v3}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$2200(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->setPullTransactionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->pullAck()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$2300(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    goto/16 :goto_4c

    :cond_fd
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_161

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Restore required for category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->restoreRequest()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$2400(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    goto/16 :goto_4c

    :cond_161
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected request. Clearing pull for coreId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_4c
.end method
