.class Lcom/nuance/swype/input/settings/InputPrefs$1;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 340
    const/4 v1, 0x1

    return v1
.end method
