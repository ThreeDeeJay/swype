.class Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetEngagementRequestWrapper"
.end annotation


# instance fields
.field likeCountStringWithLike:Ljava/lang/String;

.field likeCountStringWithoutLike:Ljava/lang/String;

.field socialSentenceStringWithLike:Ljava/lang/String;

.field socialSentenceStringWithoutLike:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 4
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1589
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1582
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1583
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1584
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1585
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string/jumbo v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    new-instance v1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1608
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1641
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error fetching engagement for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string/jumbo v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1648
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1612
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "engagement"

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1615
    .local v0, "engagementResults":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1617
    const-string/jumbo v1, "count_string_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1622
    const-string/jumbo v1, "count_string_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1627
    const-string/jumbo v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1632
    const-string/jumbo v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1637
    :cond_0
    return-void
.end method
