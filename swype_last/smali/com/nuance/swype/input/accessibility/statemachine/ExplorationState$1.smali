.class Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;
.super Landroid/os/Handler;
.source "ExplorationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;->this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 74
    :goto_6
    return-void

    .line 66
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;->this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    iget-object v0, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_24

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;->this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->access$002(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Lcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 68
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;->this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 70
    :cond_24
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;->this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    # setter for: Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mFirstKeyDelayCompleted:Z
    invoke-static {v0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->access$102(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Z)Z

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;->this$0:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    # setter for: Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z
    invoke-static {v0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->access$202(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Z)Z

    goto :goto_6

    .line 64
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
