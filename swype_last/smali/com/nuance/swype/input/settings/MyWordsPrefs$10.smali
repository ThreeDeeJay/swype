.class Lcom/nuance/swype/input/settings/MyWordsPrefs$10;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$10;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$10;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 579
    const/4 v0, 0x1

    return v0
.end method
