.class public Lcom/nuance/swype/input/settings/SettingsPrefsFragment$SkinToneDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SettingsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinToneDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$SkinToneDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;)Lcom/nuance/swype/input/settings/SettingsPrefs;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$SkinToneDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createSkinToneDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
