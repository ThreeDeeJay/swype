.class public Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Patch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Lcom/google/api/services/gmail/model/SendAs;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/settings/sendAs/{sendAsEmail}"


# instance fields
.field private sendAsEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$3:Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)V
    .locals 6

    .prologue
    .line 6839
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->this$3:Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;

    .line 6840
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v0, v0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "PATCH"

    const-string/jumbo v3, "{userId}/settings/sendAs/{sendAsEmail}"

    const-class v5, Lcom/google/api/services/gmail/model/SendAs;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6841
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->userId:Ljava/lang/String;

    .line 6842
    const-string/jumbo v0, "Required parameter sendAsEmail must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->sendAsEmail:Ljava/lang/String;

    .line 6843
    return-void
.end method


# virtual methods
.method public getSendAsEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6910
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->sendAsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6891
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6921
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6847
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6852
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6857
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6862
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6867
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6872
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setSendAsEmail(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 0

    .prologue
    .line 6915
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->sendAsEmail:Ljava/lang/String;

    .line 6916
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 0

    .prologue
    .line 6899
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->userId:Ljava/lang/String;

    .line 6900
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .locals 1

    .prologue
    .line 6877
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 6818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    move-result-object v0

    return-object v0
.end method
