.class Lcom/nuance/swypeconnect/ac/ACReportingService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ReportingService$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

.field private transmissionAttempt:I


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingService;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->transmissionAttempt:I

    return-void
.end method


# virtual methods
.method public allowedPoints(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->allowedPoints(Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method public onClear(I)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onClear(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method public onLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1e

    aget-object v3, v0, v1

    invoke-static {p3}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->from(Landroid/os/Bundle;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onLoggingFailure(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method public onLoggingSuccess(Landroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1e

    aget-object v3, v0, v1

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->from(Landroid/os/Bundle;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onLoggingSuccess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method public onTransmission(I)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->connect:Lcom/nuance/connect/api/ConnectServiceManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->REPORTING:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v1, v2, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    array-length v3, v0

    move v1, v2

    :goto_20
    if-ge v1, v3, :cond_2a

    aget-object v4, v0, v1

    invoke-interface {v4, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onTransmission(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->transmissionAttempt:I

    return-void
.end method

.method public onTransmissionFailure(ILjava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v1, v2, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    array-length v3, v0

    move v1, v2

    :goto_11
    if-ge v1, v3, :cond_1b

    aget-object v4, v0, v1

    invoke-interface {v4, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onTransmissionFailure(ILjava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$3;->$SwitchMap$com$nuance$swypeconnect$ac$ACReportingService$TransmitStrategy:[I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->currentStrategy:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$500(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->clearData()V

    :goto_31
    :pswitch_31
    return-void

    :pswitch_32
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->transmissionAttempt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->transmissionAttempt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_41

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->sendData()V

    goto :goto_31

    :cond_41
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->clearData()V

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->transmissionAttempt:I

    goto :goto_31

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method
