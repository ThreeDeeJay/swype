.class public Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;
.super Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected isAuthorized(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->requiresDocument(II)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Attempting to download a language before TOS has been accepted."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x68

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Please Accept the TOS before requesting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_36
    return-void
.end method

.method protected requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->requiresDocument(II)Z

    move-result v0

    return v0
.end method

.method protected requiresDocument(II)Z
    .registers 7

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_2e

    :cond_6
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    if-eq p1, v1, :cond_b

    if-ne p1, v3, :cond_6

    :cond_b
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/oem_62314/ACLanguageDownloadServiceNuance;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2b
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
