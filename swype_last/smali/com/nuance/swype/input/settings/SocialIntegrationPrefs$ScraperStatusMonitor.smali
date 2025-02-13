.class Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;
.super Ljava/lang/Object;
.source "SocialIntegrationPrefs.java"

# interfaces
.implements Lcom/nuance/sns/ScraperStatus$IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScraperStatusMonitor"
.end annotation


# instance fields
.field private final signInStringResId:I

.field private final summaryPrefKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V
    .registers 4
    .param p2, "signInStringResId"    # I
    .param p3, "summaryPrefKey"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p3, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->summaryPrefKey:Ljava/lang/String;

    .line 206
    iput p2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->signInStringResId:I

    .line 207
    return-void
.end method

.method private getFinishedStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->sns_personalize_finished:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignOnStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->signInStringResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusSummary(Lcom/nuance/sns/ScraperStatus$StatusValue;)Ljava/lang/String;
    .registers 4
    .param p1, "status"    # Lcom/nuance/sns/ScraperStatus$StatusValue;

    .prologue
    .line 232
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/nuance/sns/ScraperStatus$StatusValue;->status:Lcom/nuance/sns/ScraperStatus$STATUS;

    if-eqz v0, :cond_13

    .line 233
    sget-object v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$2;->$SwitchMap$com$nuance$sns$ScraperStatus$STATUS:[I

    iget-object v1, p1, Lcom/nuance/sns/ScraperStatus$StatusValue;->status:Lcom/nuance/sns/ScraperStatus$STATUS;

    invoke-virtual {v1}, Lcom/nuance/sns/ScraperStatus$STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 243
    :cond_13
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getSignOnStatus()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    .line 236
    :pswitch_18
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getSignOnStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 238
    :pswitch_1d
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getWorkingStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 240
    :pswitch_22
    iget-object v0, p1, Lcom/nuance/sns/ScraperStatus$StatusValue;->time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getFinishedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 233
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method private getStatusValue(Lcom/nuance/sns/ScraperStatus;)Lcom/nuance/sns/ScraperStatus$StatusValue;
    .registers 4
    .param p1, "scraperStatus"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/sns/ScraperStatus;->getScrapStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/sns/ScraperStatus;->parseStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/sns/ScraperStatus$StatusValue;

    move-result-object v0

    return-object v0
.end method

.method private getWorkingStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->sns_personalizing:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStatusChange(Lcom/nuance/sns/ScraperStatus;)V
    .registers 4
    .param p1, "status"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;Lcom/nuance/sns/ScraperStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V
    .registers 6
    .param p1, "status"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getStatusValue(Lcom/nuance/sns/ScraperStatus;)Lcom/nuance/sns/ScraperStatus$StatusValue;

    move-result-object v1

    .line 225
    .local v1, "statusValue":Lcom/nuance/sns/ScraperStatus$StatusValue;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->summaryPrefKey:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$100(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 226
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_15

    .line 227
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getStatusSummary(Lcom/nuance/sns/ScraperStatus$StatusValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    :cond_15
    return-void
.end method
