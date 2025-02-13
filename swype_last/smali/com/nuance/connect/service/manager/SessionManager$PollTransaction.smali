.class Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollTransaction"
.end annotation


# instance fields
.field private failure:Z

.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;

.field private userInitiated:Z


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;Z)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    iput-boolean p2, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    const-string/jumbo v1, "poll"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/nuance/connect/service/manager/SessionManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v0, v1, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-nez p2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    iput-boolean v0, v1, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    new-instance v1, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction$1;-><init>(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->processPollResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    return v0
.end method

.method static synthetic access$902(Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    return p1
.end method

.method private processPollResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 6

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2f

    :try_start_1d
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->performTasks(Lorg/json/JSONArray;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_69

    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_3e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Poll succeeded, build is still unlicensed."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V

    :cond_65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void

    :catch_69
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Exception processing poll responses"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2f
.end method

.method private sendFailMessage()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "POLL_"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "USER"

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string/jumbo v0, "SYSTEM"

    goto :goto_f
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->userInitiated:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    goto :goto_6
.end method

.method public onEndProcessing()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onEndProcessing()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/nuance/connect/comm/AbstractTransaction;->onEndProcessing()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->sendFailMessage()V

    :cond_1f
    return-void
.end method

.method public onTransactionOfflineQueued()Z
    .registers 3

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onTransactionRejected(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->failure:Z

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction;->onTransactionRejected(I)V

    return-void
.end method

.method public rollback()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$PollTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "rollback()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method
