.class public Lcom/nuance/swype/input/settings/InputPrefsFragment$RecognitionSpeedDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "InputPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/InputPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionSpeedDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/InputPrefsFragment$RecognitionSpeedDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/InputPrefsFragment;

    # getter for: Lcom/nuance/swype/input/settings/InputPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/InputPrefs;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/InputPrefsFragment;)Lcom/nuance/swype/input/settings/InputPrefs;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method