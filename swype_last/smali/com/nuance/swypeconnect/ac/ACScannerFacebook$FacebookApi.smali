.class final Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FacebookApi"
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field private static final DIALOG_BASE_URL:Ljava/lang/String; = "https://m.facebook.com/v2.7/dialog/"

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final FACEBOOK_API_VERSION:Ljava/lang/String; = "2.7"

.field public static final FORCE_DIALOG_AUTH:I = -0x1

.field private static final GRAPH_BASE_URL:Ljava/lang/String; = "https://graph.facebook.com/v2.7/"

.field public static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final RESTSERVER_URL:Ljava/lang/String; = "https://api.facebook.com/restserver.php"

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"

.field public static final TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAccessToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAccessExpires:J

    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccessExpires()J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAccessExpires:J

    return-wide v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_17

    array-length v1, p1

    if-lez v1, :cond_17

    const-string/jumbo v1, "scope"

    const-string/jumbo v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string/jumbo v1, "https://m.facebook.com/v2.7/dialog/oauth"

    const-string/jumbo v2, "display"

    const-string/jumbo v3, "touch"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "redirect_uri"

    const-string/jumbo v3, "fbconnect://success"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "user_agent"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "client_id"

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "access_token"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookUtil;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isSessionValid()Z
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final request(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    const-string/jumbo v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final request(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "format"

    const-string/jumbo v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "access_token"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz p1, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://graph.facebook.com/v2.7/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    # getter for: Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {v0, p3, p2}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    const-string/jumbo v0, "https://api.facebook.com/restserver.php"

    goto :goto_2b
.end method

.method public final setAccessExpires(J)V
    .registers 4

    iput-wide p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAccessExpires:J

    return-void
.end method

.method public final setAccessExpiresIn(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1a

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    :cond_1a
    return-void
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->mAccessToken:Ljava/lang/String;

    return-void
.end method
